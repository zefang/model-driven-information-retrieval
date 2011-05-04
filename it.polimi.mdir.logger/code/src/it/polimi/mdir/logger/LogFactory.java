package it.polimi.mdir.logger;

public class LogFactory {

	private static Log _log = new Log();
	
	public static Log getLog() {
		return _log;
	}
}
