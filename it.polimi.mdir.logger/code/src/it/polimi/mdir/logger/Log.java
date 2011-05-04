package it.polimi.mdir.logger;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class Log {
	
	private final String PATH = "../SMILA.application/MDIR.log";
	
	private File _logFile;
	
	public Log() {
	}
	
	@SuppressWarnings("unused")
	private void create() {
		_logFile = new File(PATH);
		if (_logFile.exists()) {
			_logFile.delete();
		}
		_logFile = new File(PATH);
		try {
			_logFile.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void write(String message) {
		try {
			PrintWriter outputstream = new PrintWriter(new FileWriter(_logFile));
			outputstream.println(message);
			outputstream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
