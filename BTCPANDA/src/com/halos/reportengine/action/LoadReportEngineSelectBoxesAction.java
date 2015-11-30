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
import com.halos.util.commonpackages.IHalosConstants;

public class LoadReportEngineSelectBoxesAction extends HalosBaseAction{
	String proc_name;
	String databaseName;
	ResultSet rs;
	List<Object[]> records;
	List<Object[]> results=new ArrayList<Object[]>();
	Map map=new HashMap();
	String allboxes;
	
@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	try {
		
	
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con =  DriverManager.getConnection("jdbc:mysql://localhost/"+databaseName+"?user=root&password=");
    Statement st = con.createStatement();
    String[] box=allboxes.split(",");
    for(int j=0;j<box.length;j++){
    CallableStatement cs = con.prepareCall("{ call "+box[j].split(":")[1]+"}");
   
     rs=  cs.executeQuery();

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
results.add(new Object[]{box[j].split(":")[0],map});
    }

st.close();
con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return super.execute();
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
public List<Object[]> getRecords() {
	return records;
}
public void setRecords(List<Object[]> records) {
	this.records = records;
}
public Map getMap() {
	return map;
}
public void setMap(Map map) {
	this.map = map;
}
public String getAllboxes() {
	return allboxes;
}
public void setAllboxes(String allboxes) {
	this.allboxes = allboxes;
}
public List<Object[]> getResults() {
	return results;
}
public void setResults(List<Object[]> results) {
	this.results = results;
}


}
