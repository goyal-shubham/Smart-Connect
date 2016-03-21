package beans;

public class UserRegistrationValues {

	String fname;
	String lname;
	String gen;
	String pass;
	String emailid;
	String city;
	int role = 0;
	int isActive = 0;
	public UserRegistrationValues(String fname, String lname, String gen, String pass, String emailid, String city,
			int role, int isActive) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.gen = gen;
		this.pass = pass;
		this.emailid = emailid;
		this.city = city;
		this.role = role;
		this.isActive = isActive;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	

}
