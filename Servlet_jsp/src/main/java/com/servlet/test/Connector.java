package com.servlet.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

	public Connection connection;
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String userid="kd0547";
	private String pwd = "1234";
	

	
	public Connection createConnection() {

		if(connection == null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				try {
					
					connection = DriverManager.getConnection(url,userid,pwd);
					
					return connection;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return connection;
		
	}
}
