package it.polimi.mdir.logger;

public class LogFactory {

	private static Log _log = new Log();
	
	/**
	 * @return
	 * The current active it.polimi.mdir.logger.Log instance
	 */
	public static Log getLog() {
		return _log;
	}
}
