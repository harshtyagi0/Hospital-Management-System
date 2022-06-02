package com.crud.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
	public static Connection con;
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root", "Black@white");
		return con;
	}

}
