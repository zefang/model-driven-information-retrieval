package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class ConfigFilePanel extends JPanel implements ActionListener {
	
	private static final long serialVersionUID = 8008727840100487503L;
	
	private String name = "";
	private JLabel pathLabel;
	private JButton instructionsButton;
	private JButton openButton;
	
	public ConfigFilePanel(String name, String path, String instructions) {
		this.setLayout(new FlowLayout());
		
		this.name = name;
		
		pathLabel = new JLabel(path);
			pathLabel.setFont(new Font(pathLabel.getFont().getName(),Font.BOLD,pathLabel.getFont().getSize()));
			
		openButton = new JButton("Open file");
			openButton.addActionListener(this);
			openButton.setActionCommand(path);
			
		instructionsButton = new JButton("Info");
			instructionsButton.addActionListener(this);
			instructionsButton.setActionCommand(instructions);
			
		this.add(pathLabel);
		this.add(openButton);
		this.add(instructionsButton);
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
		JButton source = (JButton) e.getSource();
		if (source.getText().equals("Info")) {
			//instructions Button
			openInstructions(e.getActionCommand());
		} else {
			//open editor Button
			openEditor(openButton.getActionCommand());
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
	
	private void openInstructions(String instructions) {
		JOptionPane.showMessageDialog(this, instructions, this.name + " instructions", JOptionPane.INFORMATION_MESSAGE);
	}

}
