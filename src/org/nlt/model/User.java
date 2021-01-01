package org.nlt.model;

public class User {
	private int id;
	private String name;
	private String email;
	private String gender;
	private String city;
	private String state;
	private int blogsPosted;

	public int getBlogsPosted() {
		return blogsPosted;
	}

	public void setBlogsPosted(int blogsPosted) {
		this.blogsPosted = blogsPosted;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

}
