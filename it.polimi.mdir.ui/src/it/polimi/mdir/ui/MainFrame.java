package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class MainFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 8323795009437878769L;
	
	private static final String LISTENER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml";
	private static final String ROUTER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml";
	private static final String CONNECTIVITY_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerConnectionConfig.xml";
	private static final String PROCESSOR_PROPERTIES_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/processor.properties";
	private static final String RECORD_FILTERS_PATH = "../SMILA.application/configuration/org.eclipse.smila.blackboard/RecordFilters.xml";
	private static final String DEPLOY_XML_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/deploy.xml";
	
	private static final String UML_CONFIG_PATH = "../it.polimi.mdir.graph/configuration.properties";
	private static final String UMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml";
	private static final String UML_PIPELINE_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/umlpipeline.bpel";
	
	
	private static final String WEBML_CONFIG_PATH = "../it.polimi.mdir.webml/configuration.properties";
	private static final String WEBMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml";
	private static final String WEBML_PIPELINE_B_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_B.bpel";
	private static final String WEBML_PIPELINE_C_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_C.bpel";
	
	private static final String SOLR_XML_PATH = "../SolrInstance/solr/solr.xml";
	private static final String UML_SCHEMA_XML_EXP_A = "../SolrInstance/solr/text_experiment_A/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_B = "../SolrInstance/solr/text_experiment_B/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_C = "../SolrInstance/solr/text_experiment_C/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_D = "../SolrInstance/solr/text_experiment_D/conf/schema.xml";

/*
 * UI Components
 */
	
	/*
	 * SMILA buttons
	 */
	//SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml
	private JButton listenerButton;
	//SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml
	private JButton routerButton;
	//SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerConnectionConfig.xml
	private JButton connectivityButton;
	//SMILA.application/configuration/org.eclipse.smila.processing.bpel/processor.properties
	private JButton processorPropertiesButton;
	//SMILA.application/configuration/org.eclipse.smila.blackboard/RecordFilters.xml
	private JButton recordFiltersButton;
	//SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/deploy.xml
	private JButton deployXmlButton;
	
	/*
	 * UML buttons
	 */
	//it.polimi.mdir.graph/configuration.properties
	private JButton umlButton; 
	//SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml
	private JButton umlCrawlerButton;
	//SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/umlpipeline.bpel
	private JButton umlPipelineButton;
	
	/*
	 * WebML buttons
	 */
	//it.polimi.mdir.webml/configuration.properties
	private JButton webmlButton; 
	//SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml
	private JButton webmlCrawlerButton;
	//SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_B.bpel
	private JButton webmlPipelineBButton;
	//SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_C.bpel
	private JButton webmlPipelineCButton;
	
	/*
	 * Solr buttons
	 */
	//SolrInstance/solr/solr.xml
	private JButton solrXmlButton;
	private JButton umlSchemaXmlExpAButton;
	private JButton umlSchemaXmlExpBButton;
	private JButton umlSchemaXmlExpCButton;
	private JButton umlSchemaXmlExpDButton;
	
	private JTabbedPane tabbedPane;
	
	private JMenuBar menuBar;
	private JMenu optionsMenu;
	private JMenuItem preferencesMenuItem;
	
	public static void main(String[] args) {
		
		//Create and show UI
		MainFrame mainFrame = new MainFrame("Configurator");
		mainFrame.pack();
		mainFrame.setVisible(true);
		
	}
	
	public MainFrame(String title) {
		super(title);
		initializeUIComponents();
	}

	private void initializeUIComponents() {
		setLookAndFeel();
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		listenerButton = new JButton(LISTENER_CONFIG_PATH);
			listenerButton.addActionListener(this);
			listenerButton.setActionCommand(LISTENER_CONFIG_PATH);
		routerButton = new JButton(ROUTER_CONFIG_PATH);
			routerButton.addActionListener(this);
			routerButton.setActionCommand(ROUTER_CONFIG_PATH);
		connectivityButton = new JButton(CONNECTIVITY_CONFIG_PATH);
			connectivityButton.addActionListener(this);
			connectivityButton.setActionCommand(CONNECTIVITY_CONFIG_PATH);
		processorPropertiesButton = new JButton(PROCESSOR_PROPERTIES_PATH);
			processorPropertiesButton.addActionListener(this);
			processorPropertiesButton.setActionCommand(PROCESSOR_PROPERTIES_PATH);
		recordFiltersButton = new JButton(RECORD_FILTERS_PATH);
			recordFiltersButton.addActionListener(this);
			recordFiltersButton.setActionCommand(RECORD_FILTERS_PATH);
		deployXmlButton = new JButton(DEPLOY_XML_PATH);
			deployXmlButton.addActionListener(this);
			deployXmlButton.setActionCommand(DEPLOY_XML_PATH);
		
		umlButton = new JButton(UML_CONFIG_PATH);
			umlButton.addActionListener(this);
			umlButton.setActionCommand(UML_CONFIG_PATH);
		umlCrawlerButton = new JButton(UMLCRAWLER_CONFIG_PATH);
			umlCrawlerButton.addActionListener(this);
			umlCrawlerButton.setActionCommand(UMLCRAWLER_CONFIG_PATH);
		umlPipelineButton = new JButton(UML_PIPELINE_PATH);
			umlPipelineButton.addActionListener(this);
			umlPipelineButton.setActionCommand(UML_PIPELINE_PATH);
			
		webmlButton = new JButton(WEBML_CONFIG_PATH);
			webmlButton.addActionListener(this);
			webmlButton.setActionCommand(WEBML_CONFIG_PATH);
		webmlCrawlerButton = new JButton(WEBMLCRAWLER_CONFIG_PATH);
			webmlCrawlerButton.addActionListener(this);
			webmlCrawlerButton.setActionCommand(WEBMLCRAWLER_CONFIG_PATH);
		webmlPipelineBButton = new JButton(WEBML_PIPELINE_B_PATH);
			webmlPipelineBButton.addActionListener(this);
			webmlPipelineBButton.setActionCommand(WEBML_PIPELINE_B_PATH);
		webmlPipelineCButton = new JButton(WEBML_PIPELINE_C_PATH);
			webmlPipelineCButton.addActionListener(this);
			webmlPipelineCButton.setActionCommand(WEBML_PIPELINE_C_PATH);
		
		solrXmlButton = new JButton(SOLR_XML_PATH);
			solrXmlButton.addActionListener(this);
			solrXmlButton.setActionCommand(SOLR_XML_PATH);
		umlSchemaXmlExpAButton = new JButton(UML_SCHEMA_XML_EXP_A);
			umlSchemaXmlExpAButton.addActionListener(this);
			umlSchemaXmlExpAButton.setActionCommand(UML_SCHEMA_XML_EXP_A);
		umlSchemaXmlExpBButton = new JButton(UML_SCHEMA_XML_EXP_B);
			umlSchemaXmlExpBButton.addActionListener(this);
			umlSchemaXmlExpBButton.setActionCommand(UML_SCHEMA_XML_EXP_B);
		umlSchemaXmlExpCButton = new JButton(UML_SCHEMA_XML_EXP_C);
			umlSchemaXmlExpCButton.addActionListener(this);
			umlSchemaXmlExpCButton.setActionCommand(UML_SCHEMA_XML_EXP_C);
		umlSchemaXmlExpDButton = new JButton(UML_SCHEMA_XML_EXP_D);
			umlSchemaXmlExpDButton.addActionListener(this);
			umlSchemaXmlExpDButton.setActionCommand(UML_SCHEMA_XML_EXP_D);
			
		tabbedPane = new JTabbedPane();
			
		menuBar = new JMenuBar();
		optionsMenu = new JMenu("Options");
		preferencesMenuItem = new JMenuItem("Preferences");
			preferencesMenuItem.addActionListener(this);
			
		addUIComponents();
	}
	
	private void addUIComponents() {
		Container contentPane = this.getContentPane();
		
		JPanel tab1Panel = new JPanel(new GridLayout(6,1));
			tab1Panel.add(new JPanel().add(listenerButton).getParent());
			tab1Panel.add(routerButton);
			tab1Panel.add(connectivityButton);
			tab1Panel.add(processorPropertiesButton);
			tab1Panel.add(recordFiltersButton);
			tab1Panel.add(deployXmlButton);
		JPanel tab2Panel = new JPanel(new GridLayout(3,1));
			tab2Panel.add(umlButton);
			tab2Panel.add(umlCrawlerButton);
			tab2Panel.add(umlPipelineButton);
		JPanel tab3Panel = new JPanel(new GridLayout(4,1));
			tab3Panel.add(webmlButton);
			tab3Panel.add(webmlCrawlerButton);
			tab3Panel.add(webmlPipelineBButton);
			tab3Panel.add(webmlPipelineCButton);
		JPanel tab4Panel = new JPanel(new GridLayout(3,1));
			tab4Panel.add(solrXmlButton);
			tab4Panel.add(umlSchemaXmlExpAButton);
			tab4Panel.add(umlSchemaXmlExpBButton);
			tab4Panel.add(umlSchemaXmlExpCButton);
			tab4Panel.add(umlSchemaXmlExpDButton);
		
		optionsMenu.add(preferencesMenuItem);
		menuBar.add(optionsMenu);
		
		tabbedPane.addTab("SMILA Configuration", new ImageIcon("./images/SMILA.gif"), tab1Panel, "SMILA configuration properties");
		tabbedPane.addTab("UML Experiments", new ImageIcon("./images/uml.gif"), tab2Panel, "UML configuration properties");
		tabbedPane.addTab("WebML Experiments", new ImageIcon("./images/webml.gif"), tab3Panel, "WebML configuration properties");
		tabbedPane.addTab("Apache Solr Configuration", new ImageIcon("./images/solr.gif"), tab4Panel, "Solr schema.xml properties");
		contentPane.add(tabbedPane);
		
		//TODO delete all code related to menubar if not needed anymore,
		//     including the PreferencesDialog
		//this.setJMenuBar(menuBar); 
	}
	
	private void setLookAndFeel() {
		try {
			UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
		} catch (UnsupportedLookAndFeelException e) {
			try {
				UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (UnsupportedLookAndFeelException e1) {
				e1.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	private String getTextEditor() {
		CommentedProperties config = new CommentedProperties();
		try {
			FileInputStream in = new FileInputStream(new File("configuration.properties")); 
			config.load(in);
			String editorPath = config.getProperty("EDITOR");
			in.close();
			return editorPath;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/*
	 * ActionListener methods
	 */
	
	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource().getClass() == JMenuItem.class) {
			openPreferencesDialog();
		} else {
			//it's a button. Open the editor.
			openEditor(e.getActionCommand());	
		}
	}
	
	private void openEditor(String parameters) {
		String editor = getTextEditor();
		try {
			ProcessBuilder procBuilder = new ProcessBuilder(editor, parameters);
			procBuilder.start();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void openPreferencesDialog() {
		PreferencesDialog preferencesDialog = new PreferencesDialog(this, "Preferences");
		
		preferencesDialog.pack();
		preferencesDialog.setVisible(true);
	}
	
	
}
