/**
 * 
 */
package exception;

/**
 * @author Banu Prakash
 * © 2011 MindTree Limited.
 */
@SuppressWarnings("serial")
public class DaoException extends ApplicationException {

	/**
	 * 
	 */
	public DaoException() {
		super();
 	}

	/**
	 * @param msg
	 * @param throwable
	 */
	public DaoException(String msg, Throwable throwable) {
		super(msg, throwable);
 	}

	/**
	 * @param msg
	 */
	public DaoException(String msg) {
		super(msg);
 	}

	/**
	 * @param throwable
	 */
	public DaoException(Throwable throwable) {
		super(throwable);
 	}

}
