package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Chat.Clients;

/**
 * Servlet implementation class charStartServlet
 */
@WebServlet("/chatStartServlet")
public class charStartServlet extends HttpServlet implements Runnable {
	private static final long serialVersionUID = 1L;
	HttpSession session;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public charStartServlet() {
        super();
        System.out.println("Servlet called");
        // TODO Auto-generated constructor stub
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		session = request.getSession(true);
		Clients obj = (Clients) session.getAttribute("client");
		System.out.println("object = " +  obj);
		ArrayList<String> message = obj.getMessageFromServer();
		String msg = "";

		//output.append(message);
		if((request.getParameter("msg1") != null) || (request.getParameter("msg1") != "")){
			msg = request.getParameter("msg1");
		}
	
		
		System.out.println("message received is " + message);
		System.out.println("from Ui" + msg);
		
		session.setAttribute("msg", message);
		
		
		request.getRequestDispatcher("/chatNew.jsp").forward(request, response);
		
		obj.giveMessageFromUI(msg);
		System.out.println(chatServlet.getName());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		
	}
	
	
}
