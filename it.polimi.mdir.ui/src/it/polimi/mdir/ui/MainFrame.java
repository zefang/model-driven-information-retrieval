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
	
	/*
	 * SMILA buttons and instructions
	 */
	private static final String LISTENER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml";
	private static final String LISTENER_INSTRUCTIONS = "Rules that specify which pipeline to call.";
	
	private static final String ROUTER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml";
	private static final String ROUTER_INSTRUCTIONS = "Specify which broker to use and possibly some custom properties to send along with your messages.";
	
	private static final String CONNECTIVITY_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerConnectionConfig.xml";
	private static final String CONNECTIVITY_INSTRUCTIONS = "Define brokers.";
	
	private static final String PROCESSOR_PROPERTIES_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/processor.properties";
	private static final String PROCESSOR_INSTRUCTIONS = "Here you can define some properties for the BPEL processor. Relevant properties are:\n"+ 
													     "Pipeline.timeout = amount in seconds until the pipeline execution “expires”. Basically everything needs to finish within this time.\n"+
													     "Record.filter = which record filter to apply automatically to the processed records. Can be defined in RecordsFilter.xml";
	
	private static final String RECORD_FILTERS_PATH = "../SMILA.application/configuration/org.eclipse.smila.blackboard/RecordFilters.xml";
	private static final String RECORD_FILTERS_INSTRUCTIONS = "You can apply a filter to a record if you need to discard some fields while keeping others. In this file you can define those filters.";
	
	private static final String DEPLOY_XML_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/deploy.xml";
	private static final String DEPLOY_XML_INSTRUCTIONS= "Here you register your pipelines.";
	
	
	/*
	 * UML buttons and instructions
	 */
	private static final String UML_CONFIG_PATH = "../it.polimi.mdir.graph/configuration.properties";
	private static final String UML_CONFIG_INSTRUCTIONS = "Specify weights, penalties, location of the dataset and other stuff.\n See the file itself for details.";
	
	private static final String UMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml";
	private static final String UMLCRAWLER_CONFIG_INSTRUCTIONS = "Specify location to crawl for UML class diagrams (.uml)";
	
	private static final String UML_PIPELINE_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/umlpipeline.bpel";
	private static final String UML_PIPELINE_INSTRUCTIONS = "Specify and configure the chains of operations to perform in the indexing phase";
	
	
	/*
	 * WebML buttons and instructions
	 */
	private static final String WEBML_CONFIG_PATH = "../it.polimi.mdir.webml/configuration.properties";
	private static final String WEBML_CONFIG_INSTRUCTIONS = "Specify weights, location of the dataset and other stuff.\n See the file itself for details.";
	
	private static final String WEBMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml";
	private static final String WEBMLCRAWLER_CONFIG_INSTRUCTIONS = "Specify location to crawl for WebML projects";
	
	private static final String WEBML_PIPELINE_B_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_B.bpel";
	private static final String WEBML_PIPELINE_B_INSTRUCTIONS = "Specify and configure the chains of operations to perform in the indexing phase for WebML experiment B (no weights)";
	
	private static final String WEBML_PIPELINE_C_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlpipeline_C.bpel";
	private static final String WEBML_PIPELINE_C_INSTRUCTIONS = "Specify and configure the chains of operations to perform in the indexing phase for WebML experiment C (with weights)";
	
	private static final String WEBML_SEARCH_PIPELINE_PATH = "../SMILA.application/configuration/org.eclipse.smila.processing.bpel/pipelines/webmlsearchpipeline.bpel";
	private static final String WEBML_SEARCH_PIPELINE_INSTRUCTIONS = "Specify the chains of operations to perform in the query phase for WebML.";
	
	
	/*
	 * Solr buttons and instructions
	 */
	private static final String SOLR_XML_PATH = "../SolrInstance/solr/solr.xml";
	private static final String SOLR_XML_INSTRUCTIONS = "Specify the Solr cores (indexes).";
	
	private static final String UML_SCHEMA_XML_EXP_A_PATH = "../SolrInstance/solr/text_experiment_A/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_A_INSTRUCTIONS = "Configures index parameters for UML experiment A (project granularity)";
	
	private static final String UML_SCHEMA_XML_EXP_B_PATH = "../SolrInstance/solr/text_experiment_B/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_B_INSTRUCTIONS = "Configures index parameters for UML experiment B (class granularity, no weights)";
	
	private static final String UML_SCHEMA_XML_EXP_C_PATH = "../SolrInstance/solr/text_experiment_C/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_C_INSTRUCTIONS = "Configures index parameters for UML experiment C (class granularity, with weights)";
	
	private static final String UML_SCHEMA_XML_EXP_D_PATH = "../SolrInstance/solr/text_experiment_D/conf/schema.xml";
	private static final String UML_SCHEMA_XML_EXP_D_INSTRUCTIONS = "Configures index parameters for UML experiment D (Class granularity, with weights and penalties, importing attributes from neighbours)";
	
	private static final String WEBML_SCHEMA_XML_EXP_B_PATH = "../SolrInstance/solr/webml_B/conf/schema.xml";
	private static final String WEBML_SCHEMA_XML_EXP_B_INSTRUCTIONS = "Configures index parameters for WebML experiment B (no weights)";
	
	private static final String WEBML_SCHEMA_XML_EXP_C_PATH = "../SolrInstance/solr/webml_C/conf/schema.xml";
	private static final String WEBML_SCHEMA_XML_EXP_C_INSTRUCTIONS = "Configures index parameters for WebML experiment C (with weights)";
	
	
/*
 * UI Components
 */
	
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
			tab1Panel.add(new ConfigFilePanel("Listener", LISTENER_CONFIG_PATH, LISTENER_INSTRUCTIONS));
			tab1Panel.add(new ConfigFilePanel("Router", ROUTER_CONFIG_PATH, ROUTER_INSTRUCTIONS));
			tab1Panel.add(new ConfigFilePanel("Connectivity", CONNECTIVITY_CONFIG_PATH, CONNECTIVITY_INSTRUCTIONS));
			tab1Panel.add(new ConfigFilePanel("Processor Properties", PROCESSOR_PROPERTIES_PATH, PROCESSOR_INSTRUCTIONS));
			tab1Panel.add(new ConfigFilePanel("Record Filters", RECORD_FILTERS_PATH, RECORD_FILTERS_INSTRUCTIONS));
			tab1Panel.add(new ConfigFilePanel("deploy.xml", DEPLOY_XML_PATH, DEPLOY_XML_INSTRUCTIONS));
		JPanel tab2Panel = new JPanel(new GridLayout(3,1));
			tab2Panel.add(new ConfigFilePanel("UML configuration.properties", UML_CONFIG_PATH, UML_CONFIG_INSTRUCTIONS));
			tab2Panel.add(new ConfigFilePanel("UML Crawler", UMLCRAWLER_CONFIG_PATH, UMLCRAWLER_CONFIG_INSTRUCTIONS));
			tab2Panel.add(new ConfigFilePanel("UML Pipeline", UML_PIPELINE_PATH, UML_PIPELINE_INSTRUCTIONS));
		JPanel tab3Panel = new JPanel(new GridLayout(5,1));
			tab3Panel.add(new ConfigFilePanel("WebML configuration.properties", WEBML_CONFIG_PATH, WEBML_CONFIG_INSTRUCTIONS));
			tab3Panel.add(new ConfigFilePanel("WebML Crawler", WEBMLCRAWLER_CONFIG_PATH, WEBMLCRAWLER_CONFIG_INSTRUCTIONS));
			tab3Panel.add(new ConfigFilePanel("WebML Pipeline B", WEBML_PIPELINE_B_PATH, WEBML_PIPELINE_B_INSTRUCTIONS));
			tab3Panel.add(new ConfigFilePanel("WebML Pipeline C", WEBML_PIPELINE_C_PATH, WEBML_PIPELINE_C_INSTRUCTIONS));
			tab3Panel.add(new ConfigFilePanel("WebML Search Pipeline", WEBML_SEARCH_PIPELINE_PATH, WEBML_SEARCH_PIPELINE_INSTRUCTIONS));
		JPanel tab4Panel = new JPanel(new GridLayout(7,1));
			tab4Panel.add(new ConfigFilePanel("solr.xml", SOLR_XML_PATH, SOLR_XML_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("UML experiment A schema.xml", UML_SCHEMA_XML_EXP_A_PATH, UML_SCHEMA_XML_EXP_A_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("UML experiment B schema.xml", UML_SCHEMA_XML_EXP_B_PATH, UML_SCHEMA_XML_EXP_B_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("UML experiment C schema.xml", UML_SCHEMA_XML_EXP_C_PATH, UML_SCHEMA_XML_EXP_C_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("UML experiment D schema.xml", UML_SCHEMA_XML_EXP_D_PATH, UML_SCHEMA_XML_EXP_D_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("WebML experiment B schema.xml", WEBML_SCHEMA_XML_EXP_B_PATH, WEBML_SCHEMA_XML_EXP_B_INSTRUCTIONS));
			tab4Panel.add(new ConfigFilePanel("WebML experiment C schema.xml", WEBML_SCHEMA_XML_EXP_C_PATH, WEBML_SCHEMA_XML_EXP_C_INSTRUCTIONS));
				
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
