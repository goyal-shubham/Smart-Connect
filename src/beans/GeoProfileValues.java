package beans;

public class GeoProfileValues {

	String city;

	String major;

	String hobby1;

	String hobby2;
	
	int userid;
	String profilepicture;

	public GeoProfileValues(int userid, String city, String major, String hobby1, String hobby2, String profilepicture) {
		this.userid=userid;
		this.city = city;
		this.major = major;
		this.hobby1 = hobby1;
		this.hobby2 = hobby2;
		this.profilepicture = profilepicture;

	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getHobby1() {
		return hobby1;
	}

	public void setHobby1(String hobby1) {
		this.hobby1 = hobby1;
	}

	public String getHobby2() {
		return hobby2;
	}

	public void setHobby2(String hobby2) {
		this.hobby2 = hobby2;
	}

}
