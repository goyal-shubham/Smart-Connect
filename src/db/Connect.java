package db;

import java.sql.SQLException;

public interface Connect {

	
	public void saveGeoData(int userid, String city, String major, String minor, String hobby1, String hobby2,
			String profilepicture) throws SQLException;
	
	
	
	
	public void saveUserData(String fname, String lname, String gen, String pass, String emailid, String city, int role,
			int isActive) throws SQLException;
	
	
	

	public boolean checkLogin(String emailid, String pass) throws SQLException;
	
	
	
	
	
	public boolean exists(String email) throws SQLException;
	
	
	
	
	public void updateFriendRequest(String userFromId, String userToId) throws SQLException;
	
	
	
	
	public void updateAddFriend(String userFromId, String userToId) throws SQLException;
	
	
	


	
}
