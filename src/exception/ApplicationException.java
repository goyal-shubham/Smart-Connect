
package exception;


@SuppressWarnings("serial")
public class ApplicationException extends Exception {

	/**
	 * 
	 */
	public ApplicationException() {
		super(); 
	}

	/**
	 * @param msg
	 * @param throwable
	 */
	public ApplicationException(String msg, Throwable throwable) {
		super(msg, throwable);
	}

	/**
	 * @param msg
	 */
	public ApplicationException(String msg) {
		super(msg);
	}

	/**
	 * @param throwable
	 */
	public ApplicationException(Throwable throwable) {
		super(throwable);
	}

}
