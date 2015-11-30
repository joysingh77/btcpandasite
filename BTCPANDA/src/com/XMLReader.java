package com;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.jsoup.Jsoup;
import org.jsoup.select.Elements;

public class XMLReader {
public static void main(String[] args) {
	try {
		String jspCode = "";
		Map<String, String> map = new HashMap<String, String>();
		SAXReader reader = new SAXReader();
		Document document = reader.read("D://person.xml");
		Element element = document.getRootElement();
		for(Iterator i=element.elements().iterator();i.hasNext();){
			Element ele = (Element)i.next();
			if(ele.getName().equals("html_codes"))
				//map.put("jsp", ele.getName());
				jspCode = ele.getText();
			else if(ele.getName().equals("selectboxes"))
			{
				String select = "";
				for(Iterator its=ele.elements().iterator();its.hasNext();){
					Element element2 = (Element)its.next();
					
					select += element2.attributeValue("id")+"-"+element2.attributeValue("procedureName")+",";
					
					if(!element2.attributeValue("depends").equals("")){
						org.jsoup.nodes.Document  doc = Jsoup.parse(jspCode);
						Elements links = doc.select("select");
						int len = links.size();
						for(int select_link=0;select_link<len;select_link++){
							if(links.get(select_link).attr("id").equals(element2.attributeValue("id"))){
								String onclick = "fnLoadDependentSelectbox('"+element2.attributeValue("depends")+"','"+element2.attributeValue("procedureName")+"','"+element2.attributeValue("id")+"');";
								links.get(select_link).attr("onclick",onclick);
							}
						}
						jspCode = doc.toString()+",";
					}
				}
				if(!select.equals(""))
					select = select.substring(0,select.length()-1);
				map.put("selectboxes", select);
			}
			
			else if(ele.getName().equals("report_params")){
				String params = "";
				for(Iterator its=ele.elements().iterator();its.hasNext();){
					Element element2 = (Element)its.next();
					params += element2.attributeValue("name")+",";
				}
				if(!params.equals(""))
					params = params.substring(0,params.length()-1);
				map.put("params", params);
			}
			
			else if(ele.getName().equals("procedure")){
				map.put("procedureName", ele.attributeValue("name"));
			}
			else if(ele.getName().equals("database")){
				map.put("databaseName", ele.attributeValue("name")+":"+ele.attributeValue("username")+":"+ele.attributeValue("password"));
			}
			
		}
		map.put("jsp", jspCode);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}
}
