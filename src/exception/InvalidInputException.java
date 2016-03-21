/**
 * 
 */
package exception;


@SuppressWarnings("serial")
public class InvalidInputException extends ApplicationException {

	/**
	 * 
	 */
	public InvalidInputException() {
		super();
	}

	/**
	 * @param msg
	 * @param throwable
	 */
	public InvalidInputException(String msg, Throwable throwable) {
		super(msg, throwable);
	}

	/**
	 * @param msg
	 */
	public InvalidInputException(String msg) {
		super(msg);
	}

	/**
	 * @param throwable
	 */
	public InvalidInputException(Throwable throwable) {
		super(throwable);
	}

}
