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
	
	/**
	 * Creates the new MDIR.log file if it doesn't exist.
	 */
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
	
	/**
	 * Writes a String in the SMILA.Application/MDIR.log file.
	 * @param message
	 * The message to write in the log.
	 */
	public void write(String message) {
		try {
			_logFile = new File(PATH);
			PrintWriter outputstream = new PrintWriter(new FileWriter(_logFile, true));
			outputstream.println(message);
			outputstream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
