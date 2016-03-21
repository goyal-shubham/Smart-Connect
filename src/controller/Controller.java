package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import db.Account;
import db.Dao;
import sun.text.normalizer.CharTrie.FriendAgent;

//import Beans.EthicalValues;
//import DatabaseActionFiles.Account;
/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// EthicalValues user;
	private DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		/*
		 * try { InitialContext initContext = new InitialContext(); Context env
		 * = (Context) initContext.lookup("java:comp/env"); ds = (DataSource)
		 * env.lookup("jdbc/smartconnect"); } catch (NamingException e) { throw
		 * new ServletException(); }
		 */
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		if (action.equals("saved")) {
			// out.println(user.getMessage());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = Dao.getCon();
		System.out.println(conn);
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		if (action == null) {
			out.println("unrecognised action");
			return;
		}

		HttpSession session = request.getSession(true);
		Account account = new Account(conn);

		if (action.equals("saveGeoData")) {
			int userid = 1;

			String city = request.getParameter("CITY");
			String major = request.getParameter("MAJOR");
			String minor = request.getParameter("MINOR");
			String hobby1 = request.getParameter("HOBBY1");
			String hobby2 = request.getParameter("HOBBY2");
			String profilepicture = request.getParameter("pic");

			try {
				account.saveGeoData(userid, city, major, minor, hobby1, hobby2, profilepicture);
				request.getRequestDispatcher("/GeoProfile.jsp").forward(request, response);

			} catch (SQLException e) {
				request.setAttribute("email", "Database error: please try again later.");
				request.getRequestDispatcher("/EthicalValues.jsp").forward(request, response);
			}

		} else if (action.equalsIgnoreCase("saveUserData")) {

			// System.out.println("");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String gen = request.getParameter("gen");
			String pass = request.getParameter("pass");
			String emailid = request.getParameter("emailid");
			String city = request.getParameter("city");
			int role = 1;
			int isActive = 1;
			System.out.println(fname);

			try {
				account.saveUserData(fname, lname, gen, pass, emailid, city, role, isActive);

				request.getRequestDispatcher("/Login.jsp").forward(request, response);

			} catch (SQLException e) {
				request.setAttribute("email", "Database error: please try again later.");
				request.getRequestDispatcher("/Register.jsp").forward(request, response);
			}

		} else if (action.equalsIgnoreCase("updateUserData")) {

		
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String emailid = request.getParameter("emailid");
			String city = request.getParameter("city");
			String major = request.getParameter("major");
			String minor = request.getParameter("minor");
			String hobby1 = request.getParameter("hobby1");
			String hobby2 = request.getParameter("hobby2");
			
			System.out.println(fname);

			try {
				session.setAttribute("fname", fname);
				session.setAttribute("lname", lname);	
				session.setAttribute("city", city);
				session.setAttribute("major", major);
				session.setAttribute("minor", minor);
				session.setAttribute("hobby1", hobby1);
				session.setAttribute("hobby2", hobby2);
				account.updateUserData(fname, lname, emailid, city, major, minor, hobby1, hobby2);
				response.sendRedirect("/SmartConnect/Profile/Profile.jsp");
				//request.getRequestDispatcher("Profile/Profile.jsp").forward(request, response);

			} catch (SQLException e) {
				request.setAttribute("email", "Database error: please try again later.");
				request.getRequestDispatcher("Profile/Profile.jsp").forward(request, response);
			}

		} else if (action.equalsIgnoreCase("insertUserData")) {

			int integrity =Integer.parseInt(request.getParameter("integrity"));
			int Loyality =Integer.parseInt(request.getParameter("loyal"));
			int Respect =Integer.parseInt(request.getParameter("Respect"));
			int Honesty =Integer.parseInt(request.getParameter("Respect"));
			String emailid = request.getParameter("emailid");
			
			try {
				account.insertUserData(integrity, Loyality, Respect, Honesty,emailid);

				request.getRequestDispatcher("welcome.jsp").forward(request, response);

			} catch (SQLException e) {
				request.setAttribute("email", "Database error: please try again later.");
				request.getRequestDispatcher("Profile.jsp").forward(request, response);
			}

		}
		
		
		
		else if (action.equalsIgnoreCase("viewProfile")) {
			System.out.println("coming here" + action); 
			int uid =Integer.parseInt(request.getParameter("uid"));
			System.out.println(uid);
			ResultSet rs1 = account.getfriends(uid);
			
			try {
				while(rs1.next()){
			
				
					request.setAttribute("friendname", account.rs1.getString(2));	
					request.setAttribute("city", account.rs1.getString(7));
					request.setAttribute("major", account.rs1.getString(10));
					request.setAttribute("minor", account.rs1.getString(11));
					request.setAttribute("hobby1", account.rs1.getString(12));
					request.setAttribute("hobby2", account.rs1.getString(13));
					request.setAttribute("pic", account.rs1.getString(14));
					
					
					
				
					request.getRequestDispatcher("/FriendsProfile/FriendsProfile.jsp").forward(request, response);
				}
				} catch (SQLException e) {
					
				}
			
			
			
			}
		else if (action.equalsIgnoreCase("geosearch")) {
			System.out.println("coming here" + action); 
			String city1= request.getParameter("city1");
			
			String major1= request.getParameter("major1");
			request.setAttribute("city1",city1);
			request.setAttribute("major1", major1);
			System.out.println(city1);
			//request.getRequestDispatcher("Connect/Connect.html").forward(request, response);

				//response.sendRedirect("/SmartConnect/GoeSuggestions/GoeSuggestions/GeoSuggestions.jsp");
			request.getRequestDispatcher("/GoeSuggestions/GoeSuggestions/GeoSuggestions.jsp").forward(request, response);
				
			
			
			}


	else if(action.equalsIgnoreCase("dologin"))

	{
		System.out.println("coming here" + action);

		String emailid = request.getParameter("emailid");
		String pass = request.getParameter("pass");

		try {
			System.out.println("coming here" + action);
			if (account.checkLogin(emailid, pass)) {

				session.setAttribute("fname", account.rs.getString(2));
				session.setAttribute("lname", account.rs.getString(3));
				session.setAttribute("userid", account.rs.getString(1));
				session.setAttribute("gender", account.rs.getString(3));
				session.setAttribute("emailid", account.rs.getString(6));
				session.setAttribute("city", account.rs.getString(7));
				session.setAttribute("role", account.rs.getString(8));
				session.setAttribute("isactive", account.rs.getString(9));
				session.setAttribute("picture", account.rs.getString(14));

				request.getRequestDispatcher("/welcome.jsp").forward(request, response);
			} else {
				System.out.println("incorrect");
				request.getRequestDispatcher("/Login.jsp").forward(request, response);
			}

		} catch (SQLException e) {
			System.out.println("error!");
			request.setAttribute("email", "Database error: please try again later.");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}

	}
	else if (action.equalsIgnoreCase("sendFriendRequest")) {

		// System.out.println("");
		String userToId = request.getParameter("friendid");
		System.out.println("Your friend is is" + userToId);
		String userFromId = (String) session.getAttribute("userid");
		System.out.println("Your From id is" + userFromId);
		
		try {
			account.updateFriendRequest(userFromId,userToId);
			//request.getRequestDispatcher("/Friends/Friends.jsp").forward(request, response);
			
			response.sendRedirect("/SmartConnect/Suggestions/Suggestions.jsp");

		} catch (SQLException e) {
			request.setAttribute("email", "Database error: please try again later.");
			request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}

	}
	
	else if (action.equalsIgnoreCase("approveFriendRequest")) {

		// System.out.println("");
		String userToId = request.getParameter("fdrequestid");
		System.out.println("Your friend is is" + userToId);
		String userFromId = (String) session.getAttribute("userid");
		System.out.println("Your From id is" + userFromId);
		
		try {
			account.updateAddFriend(userFromId,userToId);
			//request.getRequestDispatcher("/Friends/Friends.jsp").forward(request, response);
			
			response.sendRedirect("/SmartConnect/Suggestions/FriendRequest.jsp");

		} catch (SQLException e) {
			request.setAttribute("email", "Database error: please try again later.");
			request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}

	}
}


}


