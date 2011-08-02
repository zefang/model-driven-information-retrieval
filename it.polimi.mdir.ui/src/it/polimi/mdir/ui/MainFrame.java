package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class MainFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 8323795009437878769L;

	private static CommentedProperties config = new CommentedProperties();
	
	//Path to the executable of the program used to edit text files
	private static String editor = "";
	
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
	
	public static void main(String[] args) {
		
		loadProperties();
		
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

	private static void loadProperties() {
		try {
			config.load(new FileInputStream(new File("configuration.properties")));
			editor = config.getProperty("EDITOR");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * ActionListener methods
	 */
	
	@Override
	public void actionPerformed(ActionEvent e) {
		openEditor(e.getActionCommand());
	}
	
	private void openEditor(String parameters) {
		try {
			ProcessBuilder procBuilder = new ProcessBuilder(editor, parameters);
			procBuilder.start();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static void savePorperties() {
		//TODO fare dire all'utente che applicazione vuole usare per editare i file di testo
		
		config.setProperty("EDITOR", "notepad");
		try {
			config.store(new FileOutputStream(new File("configuration.properties")), null);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
