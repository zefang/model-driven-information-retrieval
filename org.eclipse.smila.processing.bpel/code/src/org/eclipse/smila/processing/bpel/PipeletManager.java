/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - removed processing services as BPEL pipeline extensions
 *******************************************************************************/

package org.eclipse.smila.processing.bpel;

import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

import javax.xml.namespace.QName;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ode.bpel.common.FaultException;
import org.apache.ode.bpel.compiler.api.CompilationException;
import org.apache.ode.bpel.compiler.api.CompilationMessage;
import org.apache.ode.bpel.evar.ExternalVariableModuleException;
import org.apache.ode.bpel.extension.ExtensibleElement;
import org.apache.ode.bpel.rtrep.common.extension.ExtensionContext;
import org.apache.ode.bpel.rtrep.v2.OActivity;
import org.apache.ode.bpel.rtrep.v2.OExtensionActivity;
import org.apache.ode.bpel.rtrep.v2.OMessageVarType;
import org.apache.ode.bpel.rtrep.v2.OProcess;
import org.apache.ode.bpel.rtrep.v2.OScope.Variable;
import org.apache.ode.utils.DOMUtils;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.xml.DOMRecordReader;
import org.eclipse.smila.ode.ODEServer;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.PipeletTrackerListener;
import org.eclipse.smila.processing.ProcessingException;
import org.osgi.framework.BundleContext;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/**
 * Pipelet Manager and Invoker.
 * 
 * @author jschumacher
 * 
 */
public final class PipeletManager implements PipeletTrackerListener {
  /**
   * singleton instance.
   */
  private static final PipeletManager INSTANCE = new PipeletManager();

  /**
   * Map of class names to currently active simple pipelet classes.
   */
  private final Map<String, Class<? extends Pipelet>> _activePipeletClasses =
    new HashMap<String, Class<? extends Pipelet>>();

  /**
   * mapping pipeline names to owning workflow processors for access to resources during invocation.
   */
  private final Map<QName, ODEWorkflowProcessor> _ownerMap = new HashMap<QName, ODEWorkflowProcessor>();

  /**
   * mapping pipelet holder keys to pipelet holders for lookup at invocation.
   */
  private final Map<String, PipeletHolder> _pipeletHolderMap = new HashMap<String, PipeletHolder>();

  /**
   * for parsing pipelet configurations.
   */
  private final DOMRecordReader _configReader = new DOMRecordReader();

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * init Pipelet manager for given ODE processor.
   */
  private PipeletManager() {
    super();
  }

  /**
   * singleton instance access method.
   * 
   * @return singleton instance of SimpletonPipeletManager
   */
  public static PipeletManager getInstance() {
    return INSTANCE;
  }

  /**
   * register this object as a listener to pipelet change events by PipeletTracker.
   * 
   * @param context
   *          bundle context.
   */
  public void registerAsListener(final BundleContext context) {
    final Dictionary<String, String> properties = new Hashtable<String, String>();
    context.registerService(PipeletTrackerListener.class.getName(), this, properties);
  }

  /**
   * register extension actvity. Should throw a {@link org.apache.ode.bpel.compiler.api.CompilationException} if an
   * error occurs.
   * 
   * @param pipelineProcess
   *          process that contains the activity.
   * @param activity
   *          the activity to register
   * @param content
   *          XML content of actvity
   * @param key
   *          key of actvity
   * @return adapter for activity.
   */
  public PipeletHolder doRegisterActivity(final OProcess pipelineProcess, final OExtensionActivity activity,
    final Element content, final String key) {
    final PipeletHolder instance = new PipeletHolder();
    instance.setClassName(getAttributeOfElement(content, BPELConstants.TAG_PIPELET, BPELConstants.ATTR_CLASS));
    if (instance.getClassName() == null) {
      throw new CompilationException(createErrorCompilationMessage(key, "Missing definition of pipelet class"));
    }
    instance.setConfiguration(parseConfiguration(content));
    if (instance.getConfiguration() == null) {
      _log.info(key + ": no pipelet configuration found.");
    } else {
      _log.info(key + ": pipelet configuration parsed.");
    }
    final String location = activity.name;
    instance
      .setCounter(new PipeletPerformanceCounter(pipelineProcess.getName(), instance.getClassName(), location));
    try {
      initPipeletInstance(instance);
    } catch (final ProcessingException ex) {
      throw new CompilationException(createErrorCompilationMessage(key, "error initialising pipelet"), ex);
    }
    return instance;
  }

  /**
   * check if pipelet invoked is already available.
   * 
   * @param pipeletHolder
   *          contains pipelet to check
   * @param processor
   *          associated processor
   * @throws ProcessingException
   *           if elements represented by adapter cannot be invoked.
   */
  public void checkAvailability(final PipeletHolder pipeletHolder, final ODEWorkflowProcessor processor)
    throws ProcessingException {
    final Pipelet pipelet = pipeletHolder.getPipelet();
    if (pipelet == null) {
      throw new ProcessingException("Pipelet of class " + pipeletHolder.getClassName() + " for activity "
        + pipeletHolder.getKey() + " is not yet instantiated.");
    }
  }

  /**
   * invoke extension activity from BPEL process.
   * 
   * @param context
   *          BPEL extension context.
   * @param element
   *          DOM representation of extension element.
   */
  public void invokeActivity(final ExtensionContext context, final Element element) {
    final long startTime = System.nanoTime();
    ProcessingPerformanceCounter counter = null;
    boolean success = false;
    try {
      if (_log.isDebugEnabled()) {
        _log.debug("activity name = " + context.getActivityName());
        _log.debug("process id = " + context.getProcessId());
      }
      final OActivity activity = context.getOActivity();
      final String key = getActivityKey(activity);
      final PipeletHolder pipeletHolder = _pipeletHolderMap.get(key);
      if (pipeletHolder == null) {
        throw new ProcessingException("no registration found for key: " + key);
      }
      final ODEWorkflowProcessor processor = getProcessor(activity);
      counter = pipeletHolder.getCounter();
      invokePipelet(context, key, pipeletHolder, processor);
      context.complete();
      success = true;
    } catch (final Exception ex) {
      if (counter != null) {
        counter.addError(ex, false);
      }
      context.completeWithFault(ex);
    } finally {
      if (counter != null) {
        counter.countInvocationNanos(System.nanoTime() - startTime, success, 0, 0);
      }
    }
  }

  /**
   * invoke pipelet holder to execute a pipelet.
   * 
   * @param context
   *          extension context
   * @param key
   *          activity key
   * @param pipeletHolder
   *          registered pipeletHolder
   * @param processor
   *          processor owning the process which contains the activity
   * @throws ProcessingException
   *           invocation failed.
   */
  private void invokePipelet(final ExtensionContext context, final String key, final PipeletHolder pipeletHolder,
    final ODEWorkflowProcessor processor) throws ProcessingException {

    String requestId = null;
    final String inputVariableName = pipeletHolder.getInputVariable();
    String outputVariableName = pipeletHolder.getOutputVariable();
    if (outputVariableName == null) {
      outputVariableName = inputVariableName;
    }
    if (_log.isDebugEnabled()) {
      _log.debug(key + ": invoking " + pipeletHolder.getPrintName() + ", processing " + inputVariableName + " -> "
        + outputVariableName);
    }

    // added by jschumacher, 2009-03-23
    // this allows pipelets/services to call external webservices using the included org.apache.axis2 bundle.
    final ClassLoader tcclBackup = Thread.currentThread().getContextClassLoader();
    Thread.currentThread().setContextClassLoader(ODEServer.class.getClassLoader());

    try {
      final Element inputVariable = (Element) context.readVariable(inputVariableName);
      if (_log.isDebugEnabled()) {
        final String inputVariableString = DOMUtils.domToString(inputVariable);
        _log.debug(key + ": input = " + inputVariableString);
      }
      final MessageHelper messageHelper = processor.getMessageHelper();
      requestId = messageHelper.parseRequestId(inputVariable);

      checkAvailability(pipeletHolder, processor);

      final Blackboard blackboard = processor.getBlackboard(requestId);
      final String[] request = messageHelper.parseMessage(blackboard, inputVariable);

      final String[] result = doInvoke(pipeletHolder, processor, blackboard, request);
      final Element outputVariable = messageHelper.createMessage(blackboard, result, requestId);
      if (_log.isDebugEnabled()) {
        final String outputVariableString = DOMUtils.domToString(outputVariable);
        _log.debug(key + ": output = " + outputVariableString);
      }
      context.writeVariable(outputVariableName, outputVariable);
    } catch (final ProcessingException ex) {
      throw newProcessingException("processing", ex, key, requestId, processor);
    } catch (final FaultException ex) {
      throw newProcessingException("BPEL variable access", ex, key, requestId, processor);
    } catch (final ExternalVariableModuleException ex) {
      throw newProcessingException("BPEL variable access", ex, key, requestId, processor);
    } catch (final RuntimeException ex) {
      throw newProcessingException("runtime", ex, key, requestId, processor);
    } finally {
      Thread.currentThread().setContextClassLoader(tcclBackup);
    }
  }

  /**
   * actually invoke the pipelet.
   * 
   * @param pipeletHolder
   *          pipeletHolder holds the pipelet to invoke
   * @param processor
   *          associated processor
   * @param blackboard
   *          blackboard instance to work on.
   * @param request
   *          record Ids of request.
   * @return Ids of result records
   * @throws ProcessingException
   *           error while processing.
   */
  private String[] doInvoke(final PipeletHolder pipeletHolder, final ODEWorkflowProcessor processor,
    final Blackboard blackboard, final String[] request) throws ProcessingException {
    int incomingIds = 0;
    int outgoingIds = 0;
    try {
      final Pipelet pipelet = pipeletHolder.getPipelet();
      incomingIds = getRecordCount(request);
      final String[] result = pipelet.process(blackboard, request);
      outgoingIds = getRecordCount(result);
      return result;
    } finally {
      if (pipeletHolder.getCounter() != null) {
        pipeletHolder.getCounter().countIds(incomingIds, outgoingIds);
      }
    }
  }

  /**
   * register owner of pipeline.
   * 
   * @param processor
   *          ODE processor that owns this pipeline.
   * @param processName
   *          pipeline to register
   */
  public void registerPipeline(final ODEWorkflowProcessor processor, final QName processName) {
    _ownerMap.put(processName, processor);
  }

  /**
   * create adapter for detected extension actitity. Throws a
   * {@link org.apache.ode.bpel.compiler.api.CompilationException} if an error occurs.
   * 
   * @param activity
   *          the activity to register
   * @param element
   *          DOM element from BPEL describing the actvity
   */
  public void registerActivity(final OExtensionActivity activity, final ExtensibleElement element) {
    final OProcess process = activity.getOwner();
    final String key = getActivityKey(activity);
    final Element content = element.getNestedElement();
    final PipeletHolder pipeletHolder = doRegisterActivity(process, activity, content, key);
    if (pipeletHolder != null) {
      pipeletHolder.setKey(key);
      pipeletHolder.setInputVariable(getAttributeOfElement(content, BPELConstants.TAG_VARIABLES,
        BPELConstants.ATTR_INPUT));
      pipeletHolder.setOutputVariable(getAttributeOfElement(content, BPELConstants.TAG_VARIABLES,
        BPELConstants.ATTR_OUTPUT));
      if (_log.isInfoEnabled()) {
        _log.info(key + ": found " + pipeletHolder.getPrintName() + ", processing "
          + pipeletHolder.getInputVariable() + " -> " + pipeletHolder.getOutputVariable());
      }
      _pipeletHolderMap.put(key, pipeletHolder);
    }
  }

  /**
   * learn about new pipelet classes and instantiate pipelets waiting for their classes.
   * 
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.PipeletTrackerListener#pipeletsAdded(java.util.Map)
   */
  @Override
  public void pipeletsAdded(final Map<String, Class<? extends Pipelet>> pipeletClasses) {
    _log.info("Pipelets have been added: " + pipeletClasses.keySet());
    _activePipeletClasses.putAll(pipeletClasses);
    for (final PipeletHolder holder : _pipeletHolderMap.values()) {
      try {
        initPipeletInstance(holder);
      } catch (final ProcessingException ex) {
        _log.error("error when initializing pending pipelet", ex);
      }
    }
  }

  /**
   * forget pipelet classes and remove instances.
   * 
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.PipeletTrackerListener#pipeletsRemoved(java.util.Map)
   */
  @Override
  public void pipeletsRemoved(final Map<String, Class<? extends Pipelet>> pipeletClasses) {
    _log.info("Pipelets have been removed: " + pipeletClasses.keySet());
    for (final PipeletHolder holder : _pipeletHolderMap.values()) {
      if (pipeletClasses.containsKey(holder.getClassName())) {
        holder.setPipelet(null);
      }
    }
    for (final String className : pipeletClasses.keySet()) {
      _activePipeletClasses.remove(className);
    }
  }

  /**
   * initialize a pipelet instance.
   * 
   * @param instance
   *          instance.
   * @throws ProcessingException
   *           error during initialization.
   */
  private void initPipeletInstance(final PipeletHolder instance) throws ProcessingException {
    if (instance.getPipelet() == null) {
      final String className = instance.getClassName();
      if (_activePipeletClasses.containsKey(className)) {
        final Class<? extends Pipelet> pipeletClass = _activePipeletClasses.get(className);
        try {
          final Pipelet pipelet = pipeletClass.newInstance();
          if (instance.getConfiguration() != null) {
            // added by jschumacher, 2009-03-23
            // this allows pipelets/services to init clients to external webservices using the
            // included org.apache.axis2 bundle.
            final ClassLoader tcclBackup = Thread.currentThread().getContextClassLoader();
            Thread.currentThread().setContextClassLoader(ODEServer.class.getClassLoader());
            try {
              pipelet.configure(instance.getConfiguration());
            } finally {
              Thread.currentThread().setContextClassLoader(tcclBackup);
            }
          }
          instance.setPipelet(pipelet);
        } catch (final InstantiationException e) {
          throw new ProcessingException("error instantiating pipelet class " + className, e);
        } catch (final IllegalAccessException e) {
          throw new ProcessingException("error instantiating pipelet class " + className, e);
        }
      }
    }
  }

  /**
   * parse a PipeletConfiguration from the content of extension activity.
   * 
   * @param content
   *          extension activity content.
   * @return the parsed PipeletConfiguration if one was contained, else null.
   */
  private AnyMap parseConfiguration(final Element content) {
    AnyMap configuration = null;
    final NodeList config =
      content.getElementsByTagNameNS(ODEWorkflowProcessor.NAMESPACE_PROCESSOR, BPELConstants.TAG_CONFIGURATION);
    if (config.getLength() > 0) {
      final Element configElement = (Element) config.item(0);
      configuration = _configReader.parseMap(configElement);
    }
    return configuration;
  }

  /**
   * find element with given local name (proc: namespace) and return value of given attribute. return null, if not
   * found.
   * 
   * @param content
   *          an element to search in.
   * @param localName
   *          local name of element to look for.
   * @param attribute
   *          attribute name.
   * @return attribute value if found, else null.
   */
  private String getAttributeOfElement(final Element content, final String localName, final String attribute) {
    String attributeValue = null;
    final NodeList nodes = content.getElementsByTagNameNS(ODEWorkflowProcessor.NAMESPACE_PROCESSOR, localName);
    if (nodes.getLength() > 0) {
      attributeValue = ((Element) nodes.item(0)).getAttribute(attribute);
      if (StringUtils.isBlank(attributeValue)) {
        attributeValue = null;
      }
    }
    return attributeValue;
  }

  /**
   * utility method for creating error messages during activity registration. They must throw a
   * {@link org.apache.ode.bpel.compiler.api.CompilationException} which needs to be created with a
   * {@link CompilationMessage}. The causing exception can be added to the
   * {@link org.apache.ode.bpel.compiler.api.CompilationException} itself.
   * 
   * @param key
   *          activity key
   * @param message
   *          message describing the error.
   * @return CompilationMessage describing an error in phase=0.
   */
  private CompilationMessage createErrorCompilationMessage(final String key, final String message) {
    final CompilationMessage msg = new CompilationMessage();
    msg.severity = CompilationMessage.ERROR;
    msg.phase = 0;
    msg.code = key;
    msg.messageText = message;
    return msg;
  }

  /**
   * Counts the number of recordIds in a given String[], recordIds may be null.
   * 
   * @param recordIds
   *          the Id[]
   * @return the count
   */
  private int getRecordCount(final String[] recordIds) {
    if (recordIds != null) {
      return recordIds.length;
    }
    return 0;
  }

  /**
   * create unique name for given key.
   * 
   * @param activity
   *          a ODE activity
   * @return unique name.
   */
  private String getActivityKey(final OActivity activity) {
    return activity.getOwner().getName() + "/" + activity.name;
  }

  /**
   * @param activity
   *          an extension activity
   * @return processor owning the process containing this activity.
   * @throws ProcessingException
   *           no processor found.
   */
  private ODEWorkflowProcessor getProcessor(final OActivity activity) throws ProcessingException {
    final QName processName = activity.getOwner().getQName();
    final ODEWorkflowProcessor processor = _ownerMap.get(processName);
    if (processor == null) {
      throw new ProcessingException("no owning processor found for " + getActivityKey(activity));
    }
    return processor;
  }

  /**
   * get the declared type of the variable from the process definition. If no declaration is found,
   * {@value BPELConstants#TYPE_PROCESSORMESSAGE} is returned.
   * 
   * @param context
   *          ODE extension context
   * @param variableName
   *          name of variable
   * @return type of variable.
   */
  private QName getVariableType(final ExtensionContext context, final String variableName) {
    QName varType = BPELConstants.TYPE_PROCESSORMESSAGE;
    try {
      final Variable variable = context.getVisibleVariables().get(variableName);
      if (variable.type instanceof OMessageVarType) {
        final QName type = ((OMessageVarType) variable.type).messageType;
        if (type != null) {
          varType = type;
        }
      }
    } catch (Exception ex) {
      ex = null;
    }
    return varType;
  }

  /**
   * create ProcessingException from an exception thrown in pipeline element invocation. The exception is also stored in
   * the associated processor for later returning to the client, if possible.
   * 
   * @param description
   *          readable error name
   * @param cause
   *          exception thrown in the invocation
   * @param key
   *          pipeline element key.
   * @param requestId
   *          request id (may be null, if error occurs before it could be determined).
   * @param processor
   *          associated processor
   * @return processing exception to throw
   */
  private ProcessingException newProcessingException(final String description, final Exception cause,
    final String key, final String requestId, final ODEWorkflowProcessor processor) {
    String message = null;
    ProcessingException procEx = null;
    if (cause instanceof ProcessingException) {
      message = "Invocation of pipeline element " + key + " failed: " + cause.getMessage();
      procEx = new ProcessingException(message, cause.getCause());
    } else {
      message = "Invocation of pipeline element " + key + " failed due to " + description + " error.";
      procEx = new ProcessingException(message, cause);
    }
    // _log.error(message, cause);
    if (requestId != null) {
      processor.setPipeletException(requestId, procEx);
    }
    return procEx;
  }

}
