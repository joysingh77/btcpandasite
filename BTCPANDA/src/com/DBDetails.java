package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;



public class DBDetails {
public static void main(String[] args) throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1/","root","");
	 ResultSet rs=con.getMetaData().getCatalogs();
	 while(rs.next()){
		 System.out.println(rs.getString("TABLE_CAT"));
	 }
	 rs = con.getMetaData().getProcedures(null, null, "%");
	 while(rs.next()){
		 System.out.println(rs.getString("PROCEDURE_NAME"));
		 System.out.println(rs.getString("PROCEDURE_TYPE"));
	 }
}
}
