package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class MainFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 8323795009437878769L;
	
	private static final String UML_CONFIG_PATH = "../it.polimi.mdir.graph/configuration.properties";
	private static final String WEBML_CONFIG_PATH = "../it.polimi.mdir.webml/configuration.properties";
	private static final String UMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml";
	private static final String WEBMLCRAWLER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml";
	private static final String LISTENER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml";
	private static final String ROUTER_CONFIG_PATH = "../SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml";
	
	/*
	 * UI Components
	 */
	
	private JButton umlButton; //it.polimi.mdir.graph/configuration.properties
	private JButton webmlButton; //it.polimi.mdir.webml/configuration.properties
	
	//SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml
	private JButton umlCrawlerButton;
	//SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml
	private JButton webmlCrawlerButton;
	
	//SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml
	private JButton listenerButton;
	////SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml
	private JButton routerButton;
	//TODO connectivity button?
	
	//TODO pipeline buttons?
	
	//TODO buttons to open the various schema.xml files?
	
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
		this.setLayout(new GridLayout(6, 1, 10, 10));
		
		umlButton = new JButton("it.polimi.mdir.graph/configuration.properties");
			umlButton.addActionListener(this);
			umlButton.setActionCommand(UML_CONFIG_PATH);
		webmlButton = new JButton("it.polimi.mdir.webml/configuration.properties");
			webmlButton.addActionListener(this);
			webmlButton.setActionCommand(WEBML_CONFIG_PATH);
		umlCrawlerButton = new JButton("SMILA.application/configuration/org.eclipse.smila.connectivity.framework/uml.xml");
			umlCrawlerButton.addActionListener(this);
			umlCrawlerButton.setActionCommand(UMLCRAWLER_CONFIG_PATH);
		webmlCrawlerButton = new JButton("SMILA.application/configuration/org.eclipse.smila.connectivity.framework/webml.xml");
			webmlCrawlerButton.addActionListener(this);
			webmlCrawlerButton.setActionCommand(WEBMLCRAWLER_CONFIG_PATH);
		listenerButton = new JButton("SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerListenerConfig.xml");
			listenerButton.addActionListener(this);
			listenerButton.setActionCommand(LISTENER_CONFIG_PATH);
		routerButton = new JButton("SMILA.application/configuration/org.eclipse.smila.connectivity.queue.worker.jms/QueueWorkerRouterConfig.xml");
			routerButton.addActionListener(this);
			routerButton.setActionCommand(ROUTER_CONFIG_PATH);
			
		menuBar = new JMenuBar();
		optionsMenu = new JMenu("Options");
		preferencesMenuItem = new JMenuItem("Preferences");
			preferencesMenuItem.addActionListener(this);
			
		addUIComponents();
	}
	
	private void addUIComponents() {
		Container contentPane = this.getContentPane();
		contentPane.add(umlButton);
		contentPane.add(webmlButton);
		contentPane.add(umlCrawlerButton);
		contentPane.add(webmlCrawlerButton);
		contentPane.add(listenerButton);
		contentPane.add(routerButton);
		
		optionsMenu.add(preferencesMenuItem);
		menuBar.add(optionsMenu);
		
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
			System.out.println(editorPath);
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
