package com.halos.reportengine.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.halos.reportengineutil.HalosBaseAction;

public class CreateStoredProcedureAction extends HalosBaseAction{
	String sqlErr;
@Override
public String execute() throws Exception {
	try {
		createProcedureShowSuppliers();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return super.execute();
}
public  void createProcedureShowSuppliers() throws Exception  {
	String createProcedure = null;

	createProcedure  = getFieldValue("storedprocedureQuery");
	String database = getFieldValue("databaseList");
	Statement stmt = null;
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+database+"?user=root&password=");


	try {
	    stmt = con.createStatement();
	    stmt.executeUpdate(createProcedure);
	} catch (Exception e) {
		sqlErr = e.getMessage();
		e.printStackTrace();
	} finally {
	    if (stmt != null) { stmt.close(); }
	}
	}
public String getSqlErr() {
	return sqlErr;
}
public void setSqlErr(String sqlErr) {
	this.sqlErr = sqlErr;
}

}
