package uk.co.andromedatech.onlineradio.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAO {

	static Connection connection = null;
	static PreparedStatement selectUser = null;

	public static User login(User user) {

		String username = user.getUsername();
		String password = user.getPassword();

		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/mydb";
			String dbusername = "root";
			String dbpassword = ""; // Change it to your Password

			// Setup the connection with the DB
			connection = DriverManager.getConnection(url, dbusername,
					dbpassword);

			String query = "SELECT * FROM admin WHERE username = ? AND password = ?";

			try {
				// connection.setAutoCommit(false);
				selectUser = connection.prepareStatement(query);
				selectUser.setString(1, username);
				selectUser.setString(2, password);
				// Execute preparedstatement
				ResultSet rs = selectUser.executeQuery();

				// Output user details and query
				System.out.println("Your user name is " + username);
				System.out.println("Your password is " + password);
				System.out.println("Query: " + query);
				
				boolean more = rs.next();
				
				// if user does not exist set the validity variable to true
				if (!more) {
					System.out
							.println("Sorry, you are not a registered user! Please sign up first!");
					user.setValid(false);
				}

				// if user exists set the validity variable to true
				else if (more) {
					String name = rs.getString("name");

					System.out.println("Welcome " + name);
					user.setName(name);
					user.setValid(true);
				}
				

			} catch (Exception e) {
				System.out.println("Prepared Statement Error! " + e);
			}	

		} catch (Exception e) {
			System.out.println("Log in failed: An exception has occured! " + e);
		} finally {
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (Exception e) {
				System.out.println("Connection closing exception occured! ");
			}
			connection = null;
		}

		return user;
	}

}
