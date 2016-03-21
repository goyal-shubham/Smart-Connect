package db;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class Dao {

	public static Connection getCon() {

		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException ex) {

			System.out.println("no connection!");

		}

		try {

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "khushboo");

		} catch (SQLException ex) {

			System.out.println("no connection!");

		}

		return con;

	}

}
