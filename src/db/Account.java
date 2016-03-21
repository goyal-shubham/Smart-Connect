package db;

//package DatabaseActionFiles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class Account implements Connect{
	public ResultSet rs = null;
	public ResultSet rs1 = null;
	public ResultSet rs2 = null;
	private Connection conn;

	public Account() {

	}

	public Account(Connection conn)  {
		this.conn = conn;
	}

	public ResultSet getfriends(int uid1) {
		try {
			System.out.println("in account getfriend");
			String sql = "Select * from usermaster where userid=" + uid1 +" " ;

			
			PreparedStatement stmt = conn.prepareStatement(sql);
			rs1= stmt.executeQuery();
			System.out.println(rs1);
			
		
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return rs1;

	}
	public ResultSet searchgeodata(String city, String major1) {
		try {
			System.out.println("in account searchgeodata ");
			String sql = "Select * from usermaster where city=" + city +" or major=" + major1 +"" ;

			
			PreparedStatement stmt = conn.prepareStatement(sql);
			rs2= stmt.executeQuery();
			System.out.println(rs2);
			
		
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return rs2;

	}

	public void saveGeoData(int userid, String city, String major, String minor, String hobby1, String hobby2,
			String profilepicture) throws SQLException {

		String sql = "insert into usergeoinfo (userid,city,major,minor,hobby1,hobby2,profilepicture) VALUES(?,?,?,?,?,?,?)";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setInt(1, 1);
		stmt.setString(2, city);
		stmt.setString(3, major);
		stmt.setString(4, minor);
		stmt.setString(5, hobby1);
		stmt.setString(6, hobby2);
		stmt.setString(7, profilepicture);

		stmt.executeUpdate();

		stmt.close();
	}
	

	public void saveUserData(String fname, String lname, String gen, String pass, String emailid, String city, int role,
			int isActive) throws SQLException

	{
		System.out.println(fname);
		String sql = "insert into usermaster (firstname,lastname,gender,password,emailid,city,role,isactive) values(?,?,?,?,?,?,?,?)";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, fname);
		stmt.setString(2, lname);
		stmt.setString(3, gen);
		stmt.setString(4, pass);
		stmt.setString(5, emailid);
		stmt.setString(6, city);
		stmt.setInt(7, role);
		stmt.setInt(8, isActive);

		stmt.executeUpdate();
		stmt.close();

	}

	public void updateUserData(String fname, String lname, String emailid1, String city1, String major1, String minor1,
			String hobby11, String hobby12) throws SQLException

	{
		System.out.println(fname);
		String sql = "update usermaster set firstname='" + fname + "',lastname='" + lname + "',emailid='" + emailid1
				+ "',city='" + city1 + "',major='" + major1 + "',minor='" + minor1 + "',hobby1='" + hobby11
				+ "',hobby2='" + hobby12 + "' where emailid ='" + emailid1 + "'";
		System.out.println(sql);
		PreparedStatement stmt = conn.prepareStatement(sql);
		System.out.println(stmt);

		stmt.executeUpdate();
		System.out.println("in account update");
		stmt.close();

	}
	
	public void insertUserData(int integrity,int Loyality,int Respect,int Honesty, String emailid) throws SQLException

	{
		int average= (integrity + Loyality+ Respect+Honesty)/4;
		String sql = "update usermaster set integrity=" + integrity + ",Loyality=" + Loyality + ",Respect=" + Respect
				+ ",Honesty=" + Honesty + ",average=" +average+" where emailid='"+emailid+ "'";
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		System.out.println(stmt);

		stmt.executeUpdate();
		System.out.println("in account update");
		stmt.close();

	}

	public boolean checkLogin(String emailid, String pass) throws SQLException {
		Statement ps = null;
		boolean flag = false;
		try {

			ps = conn.createStatement();

			rs = ps.executeQuery(
					"Select * from usermaster where emailid='" + emailid + "' and password='" + pass + "'");
			
			System.out.println(rs);
			if (rs.next()) {

				flag = true;
			}
		} catch (SQLException e) {

			e.printStackTrace();

		}
		return flag;
	}

	public boolean exists(String email) throws SQLException {
		String sql = "select count(*) as count from usermaster where emailid=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, email);
		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}

		rs.close();
		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}
	
public void updateFriendRequest(String userFromId, String userToId) throws SQLException {

		
		
		String sql = "insert into friends(friendFromUserId, friendToUserId, Status, IsActive) values(?,?,?,?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1,  Integer.parseInt(userFromId));
		stmt.setInt(2, Integer.parseInt(userToId));
		stmt.setInt(3,  0);
		stmt.setInt(4, 1);
		System.out.println(stmt);
		stmt.executeUpdate();
		System.out.println("in account update");
		stmt.close();

	}

	public void updateAddFriend(String userFromId, String userToId) throws SQLException {
		// TODO Auto-generated method stub
		String strUpdateFriendTable = "update friends set Status = 1, IsActive=0 where friendFromUserId = ? and friendToUserId=?";
		String sqlInsertFriends = "insert into friends(friendFromUserId, friendToUserId, Status, IsActive) values(?,?,1,0)";
		PreparedStatement stmt = conn.prepareStatement(strUpdateFriendTable);
		stmt.setInt(1,  Integer.parseInt(userToId));
		stmt.setInt(2, Integer.parseInt(userFromId));
		stmt.executeUpdate();
		stmt.close();
		PreparedStatement stmt1 = conn.prepareStatement(sqlInsertFriends);
		stmt1.setInt(1,  Integer.parseInt( userFromId));
		stmt1.setInt(2, Integer.parseInt(userToId));
		System.out.println(strUpdateFriendTable);
		System.out.println(sqlInsertFriends);
		stmt1.executeUpdate();
		stmt1.close();
		
		
	}

}

	

