package com.talentsprint.userbean;

public class UserBean {
	
	private String fname;
	private String lname;
    private String password;
    private String email_id;
    private String Date_Of_Birth;
    private String Gender;
    private String contact;
    public boolean valid;
    public double price;
	
	
    
    

	

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getEmail_Id() {
		return email_id;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public void setEmail_Id(String email) {
		this.email_id = email;
	}

	public String getDate_Of_Birth() {
		return Date_Of_Birth;
	}

	public void setDate_Of_Birth(String date_Of_Birth) {
		Date_Of_Birth = date_Of_Birth;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPassword() {
       return password;
	}

    public void setPassword(String newPassword) {
       password = newPassword;
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

	public boolean isValid() {
       return valid;
	}

    public void setValid(boolean newValid) {
       valid = newValid;
	}	
}
