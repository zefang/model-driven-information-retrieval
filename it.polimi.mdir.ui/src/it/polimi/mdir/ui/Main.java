package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.Container;
import java.awt.FlowLayout;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class Main {

	
	private static CommentedProperties config = new CommentedProperties();
	//Path to the executable of the program used to edit text files
	private static String editor = "";
	
	/*
	 * UI Components
	 */
	private static JFrame mainFrame;
	private static JButton openButton;
	
	public static void main(String[] args) {
		
		loadProperties();
		initialization();
		
		try {
			ProcessBuilder procBuilder = new ProcessBuilder(editor);
			Process editor = procBuilder.start();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mainFrame.pack();
		mainFrame.setVisible(true);
		
	}
	
	private static void loadProperties() {
		try {
			config.load(new FileInputStream(new File("configuration.properties")));
			editor = config.getProperty("EDITOR");
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

	private static void initialization() {
		mainFrame = new JFrame("Configurator");
		setLookAndFeel();
		mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		mainFrame.setLayout(new FlowLayout(FlowLayout.LEFT));
		openButton = new JButton("open configuration file");
		addContent();
	}
	
	private static void addContent() {
		Container contentPane = mainFrame.getContentPane();
		contentPane.add(openButton);
	}
	
	private static void setLookAndFeel() {
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
}
