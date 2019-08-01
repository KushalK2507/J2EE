package org.kushal.bean;

// This is the entity class.
// The getters and setters of the properties in the entity class is must. 
public class User {

	private String firstName;
	private String lastName;

	public User() {
		firstName = "Kushal";
		lastName = "Kesarwani";
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
