package it.polimi.mdir.ui;

import it.polimi.mdir.ui.utils.CommentedProperties;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class PreferencesDialog extends JDialog implements ActionListener {

	private static final long serialVersionUID = -7492939292830678718L;
	
	/*
	 * UI Components
	 */
	private JLabel instructionsLabel;
	private JLabel editorLabel;
	
	private JButton setEditorButton;
	
	public PreferencesDialog(JFrame owner, String title) {
		super(owner, title);
		this.setLayout(new GridLayout(4,1,10,10));
		this.setModalityType(ModalityType.APPLICATION_MODAL);
		this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		
		initializeUIComponents();

	}

	private void initializeUIComponents() {
		instructionsLabel = new JLabel("Set the path to the text editor used to open the files.");
		editorLabel = new JLabel(getTextEditor());
		setEditorButton = new JButton("Browse");
			setEditorButton.addActionListener(this);
		
		addUIComponents();
	}
	
	private void addUIComponents() {
		Container contentPane = this.getContentPane();
		contentPane.add(instructionsLabel);
		contentPane.add(editorLabel);
		contentPane.add(setEditorButton);
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
		JFileChooser fileChooser = new JFileChooser();
		int approved = fileChooser.showOpenDialog(this);
		if (approved == JFileChooser.APPROVE_OPTION) {
			File editor = fileChooser.getSelectedFile();
			String filePath = editor.getAbsolutePath();
			filePath = filePath.replaceAll("\\\\", "/");
			editorLabel.setText(filePath);
			savePorperties(filePath);
		}
	}
	
	private void savePorperties(String path) {
		CommentedProperties config = new CommentedProperties();
		config.setProperty("EDITOR", path);
		try {
			FileOutputStream out = new FileOutputStream(new File("configuration.properties")); 
			config.store(out, null);
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
}
