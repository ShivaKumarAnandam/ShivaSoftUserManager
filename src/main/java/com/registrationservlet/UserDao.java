package com.registrationservlet;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDao {
	public static int savedata(UserData user)
			throws FileNotFoundException, IOException, ClassNotFoundException, SQLException {

		// Data Access Object's methods
		int res = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = TestConnection.createConnection();
			preparedStatement = connection.prepareStatement("insert into user_details values(?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getCountry());
			preparedStatement.setString(5, user.getQualification());
			preparedStatement.setString(6, user.getGender());
			preparedStatement.setString(7, user.getTechnologies());
			preparedStatement.setString(8, user.getAddress());
			preparedStatement.setString(9, user.getComments());
			res = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (connection != null)
				connection.close();
			if (preparedStatement != null)
				preparedStatement.close();
		}

		return res;

	}

	public static boolean checkinglogin(String email, String password) throws SQLException {
		boolean result = false;
		Connection connection = null;
		Statement statement = null;
		ResultSet set = null;

		try {
			connection = TestConnection.createConnection();
			statement = connection.createStatement();
			set = statement.executeQuery("select email,password from user_details where email='" + email
					+ "' and password='" + password + "'");
			while (set.next()) {
				result = true;
			}

		} catch (IOException | SQLException e) {

			e.printStackTrace();
		} finally {
			if (connection != null)
				connection.close();
			if (statement != null)
				statement.close();
		}
		return result;
	}

	public static int passwordreset(String email, String password) throws FileNotFoundException, IOException {
		int result = 0;
		try {
			Connection connection = TestConnection.createConnection();
			Statement statement = connection.createStatement();
			result = statement
					.executeUpdate("update user_details set password='" + password + "' where email='" + email + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static ResultSet listOfUser() throws FileNotFoundException, IOException {
		ResultSet set = null;
		Connection connection = TestConnection.createConnection();
		try {
			Statement statement = connection.createStatement();
			set = statement.executeQuery(
					"select username,password,email,country,qualification,gender,technologies,address,comments from user_details");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return set;
	}

	public static ResultSet singleUser(String name) throws FileNotFoundException, IOException {
		ResultSet set = null;
		Connection connection = TestConnection.createConnection();
		try {
			Statement statement = connection.createStatement();
			set = statement.executeQuery(
					"select username,password,email,country,qualification,gender,technologies,address,comments from user_details where username='"
							+ name + "'");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return set;
	}

	public static ResultSet searchByName(String email) {
		ResultSet set = null;
		Connection connection = null;
		Statement statement = null;
		try {
			connection = TestConnection.createConnection();
			statement = connection.createStatement();
			set = statement.executeQuery("select * from user_details where email='" + email + "'");
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}

		return set;
	}

	public static ResultSet searchByEmailAndPassword(String email, String password) {
		ResultSet set = null;
		Connection connection = null;
		Statement statement = null;
		try {
			connection = TestConnection.createConnection();
			statement = connection.createStatement();
			set = statement.executeQuery(
					"select * from user_details where email='" + email + "' and password='" + password + "'");
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}

		return set;
	}

	public static int deleteUser(String password, String email) throws Exception {
		int result = 0;
		try {
			Connection connection = TestConnection.createConnection();
			String sql = "DELETE FROM user_details WHERE password = ? AND email = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, password);
			preparedStatement.setString(2, email);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static int editData(String username, String password, String email, String country, String finalqual,
			String gender, String finaltech, String finaladdr, String comments)
			throws FileNotFoundException, IOException {
		int result = 0;
		try {
			Connection connection = TestConnection.createConnection();
			Statement statement = connection.createStatement();
			result = statement.executeUpdate("update user_details set username='" + username + "', email='" + email
					+ "', country='" + country + "', qualification='" + finalqual + "', gender='" + gender
					+ "', technologies='" + finaltech + "', address='" + finaladdr + "', comments='" + comments
					+ "'  where password='" + password + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static ResultSet searchUser(String username) {
		ResultSet set = null;
		Connection connection = null;
		Statement statement = null;
		try {
			connection = TestConnection.createConnection();
			statement = connection.createStatement();
			set = statement.executeQuery("select * from user_details where username='" + username + "'");
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}

		return set;
	}

}
