package com.halos.reportengine.action;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.halos.reportengineutil.HalosBaseAction;

public class LoadDependentReportEngineSelectBoxesAction extends HalosBaseAction{
	String proc_name;
	String databaseName;
	String parentVal;
	Map map=new HashMap();
	ResultSet rs;
@Override
public String execute() throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
    Connection con =  DriverManager.getConnection("jdbc:mysql://localhost/"+databaseName+"?user=root&password=");
    Statement st = con.createStatement();
    
    CallableStatement cs = con.prepareCall("{ call "+proc_name+"}");
    cs.setString(1,parentVal);
     rs=  cs.executeQuery();
     List<Object[]> records;
     records=new ArrayList<Object[]>();
while(rs.next()){
    int cols = rs.getMetaData().getColumnCount();
    Object[] arr = new Object[cols];
    for(int i=0; i<cols; i++){
      arr[i] = rs.getObject(i+1);
    }
    records.add(arr);
}
Map hashmap=new HashMap();
for(Object[] rec:records){
	hashmap.put(rec[0], rec[1]);
}


List mapKeys = new ArrayList(hashmap.keySet());
List mapValues = new ArrayList(hashmap.values());
Collections.sort(mapValues);
Collections.sort(mapKeys);
    
LinkedHashMap sortedMap = new LinkedHashMap();

Iterator valueIt = mapValues.iterator();
while (valueIt.hasNext()) {
    Object val = valueIt.next();
    Iterator keyIt = mapKeys.iterator();
    
    while (keyIt.hasNext()) {
        Object key = keyIt.next();
        String comp1 = hashmap.get(key).toString();
        String comp2 = val.toString();
        
        if (comp1.equals(comp2)){
        	hashmap.remove(key);
            mapKeys.remove(key);
            sortedMap.put(key, val);
            break;
        }

    }

}
map=sortedMap;
rs.close();
cs.execute();
cs.close();
  

st.close();
con.close();
	return super.execute();
}
public Map getMap() {
	return map;
}
public void setMap(Map map) {
	this.map = map;
}
public String getProc_name() {
	return proc_name;
}
public void setProc_name(String procName) {
	proc_name = procName;
}
public String getDatabaseName() {
	return databaseName;
}
public void setDatabaseName(String databaseName) {
	this.databaseName = databaseName;
}
public String getParentVal() {
	return parentVal;
}
public void setParentVal(String parentVal) {
	this.parentVal = parentVal;
}

}
