package com.aviation.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.aviation.model.aircraft.Aircraft;
import com.aviation.model.details.Detail;

public class SingletonDatabase {

	private static Connection connection;

	private static String jdbcUrl;
	private static String jdbcDriver;
	private static String dbUserName;
	private static String dbPassword;

	private SingletonDatabase() {
	}

	private static Connection getDBConnection() {

		Connection connection = null;

		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcUrl, dbUserName, dbPassword);
		} catch (ClassNotFoundException cfne) {
			System.err.println(cfne.getMessage());
		} catch (SQLException sqle) {
			System.err.println(sqle.getMessage());
		}
		return connection;
	}

	public static Connection getConnection() {
		return ((connection != null) ? connection : getDBConnection());
	}

	public static void insertRecord(Aircraft aircraft, Detail detail, String driver, String url, String userName,
			String password) {

		jdbcUrl = url;
		jdbcDriver = driver;
		dbUserName = userName;
		dbPassword = password;

		try {
			connection = getDBConnection();

			if (connection != null) {

				String sql = "insert into aircraft"
						+ "(acID, acImage, acModel, acDesc, acManufacturer, acDetails) "
						+ "values (?,?,?,?,?,?)";

				PreparedStatement prep = connection.prepareStatement(sql);

				prep.setString(1, aircraft.acID());
				prep.setString(2, aircraft.viewImage());
				prep.setString(3, aircraft.viewModel());
				prep.setString(4, aircraft.viewDescription());
				prep.setString(5, aircraft.getDetail().displayManufacturer());
				prep.setString(6, aircraft.getDetail().displayDetail());

				prep.executeUpdate();

			}

		} catch (SQLException sqle) {
			System.err.println(sqle.getMessage());
		}

	}

	public static void deleteRecord(String driver, String url, String userName, String password) {

		jdbcUrl = url;
		jdbcDriver = driver;
		dbUserName = userName;
		dbPassword = password;

		try {
			connection = getDBConnection();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String sql;

				sql = "TRUNCATE aircraft";
				stmt.executeUpdate(sql);

				sql = "DELETE FROM aircraft";
				stmt.executeUpdate(sql);

			}

		} catch (SQLException sqle) {
			System.err.println(sqle.getMessage());
		}

	}

}
