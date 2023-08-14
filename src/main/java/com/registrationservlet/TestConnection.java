package com.registrationservlet;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class TestConnection {
	public static Connection createConnection() throws FileNotFoundException, IOException {
		Connection connection = null;
		Properties properties = new Properties();
		properties.load(new FileInputStream(
				"D:\\Advancejava\\WebProject\\src\\main\\java\\com\\registrationservlet\\connection-info.properties"));
		try {
			Class.forName(properties.getProperty("driver"));
			connection = DriverManager.getConnection(properties.getProperty("url"), properties.getProperty("username"),
					properties.getProperty("password"));
			System.out.println("connected to Database..!");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();

		}

		return connection;

	}
}
