package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Chat.Clients;

/**
 * Servlet implementation class chatServlet
 */

@WebServlet("/chatServlet")
public class chatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String name;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatServlet() {
        super();
    	System.out.println("Chat servlet called");
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("action");
		 Clients clientObj = new Clients();

		
		clientObj.first();
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//String message = clientObj.strb.toString();
		//request.setAttribute("msg", message);
		System.out.println("object = " +  clientObj);

		//System.out.println("Servelt" + message + "end");

		HttpSession session = request.getSession(true);
		session.setAttribute("client", clientObj);
		name = (String) session.getAttribute("fname");
		System.out.println("In servet" + name);
		if(action.equals("chat")) {
			request.getRequestDispatcher("/chatNew.jsp").forward(request, response);
		}
		clientObj.giveMessageFromUI(name);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public static String getName(){
		
		System.out.println("in get anem" + name);
		return name;
	}


}
