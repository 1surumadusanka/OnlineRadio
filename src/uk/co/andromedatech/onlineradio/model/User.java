package uk.co.andromedatech.onlineradio.model;

public class User {
	
	private int id;
	private String name;
	private String username;
	private String password;
	private boolean validity;
	
	public String getName(){
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public String getUsername(){
		return username;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public void removeName(){
		name = null;
	}
	
	public void removeUsername(){
		username = null;
	}
	
	public boolean isValid(){
		return validity;
	}
	
	public void setValid(boolean newValidity){
		validity = newValidity;
	}
	
}
