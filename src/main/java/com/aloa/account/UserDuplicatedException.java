package com.aloa.account;

public class UserDuplicatedException extends RuntimeException {
	private String username;
	
	public UserDuplicatedException(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
