package com.editservlet;

public class User {
	private String username;
	private String password;
	private String email;
	private String country;
	private String qualification;
	private String gender;
	private String technologies;
	private String area;
	private String city;
	private String state;
	private String pincode;
	private String comments;

	public User(String username, String password, String email, String country, String qualification, String gender,
			String technologies, String area, String city, String state, String pincode, String comments) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.country = country;
		this.qualification = qualification;
		this.gender = gender;
		this.technologies = technologies;
		this.area = area;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.comments = comments;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTechnologies() {
		return technologies;
	}

	public void setTechnologies(String technologies) {
		this.technologies = technologies;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", country=" + country
				+ ", qualification=" + qualification + ", gender=" + gender + ", technologies=" + technologies
				+ ", area=" + area + ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", comments="
				+ comments + "]";
	}

}
