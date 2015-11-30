package com.halos.reportengine.action;

import java.io.FileOutputStream;

import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;

import com.halos.reportengineutil.HalosBaseAction;

public class CreateInputTemplate extends HalosBaseAction{
@Override
public String execute() throws Exception {
	int selctboxCount = 0;
	int paramsCount = 0;
	Document document = DocumentFactory.getInstance().createDocument();
	
	Element root = document.addElement("input_template");
	Element html = root.addElement("html_codes");
	Element sel = root.addElement("selectboxes");
	Element params = root.addElement("report_params");
	Element proc = root.addElement("procedure");
	Element database = root.addElement("database");
	String htmlContent = getFieldValue("html");
	//html.addCDATA(getFieldValue("html"));
	if(!getFieldValue("hdnSelectCount").equals(""))
		selctboxCount = Integer.parseInt(getFieldValue("hdnSelectCount"));
	for(int i=1;i<selctboxCount;i++){
		Element selectBox = sel.addElement("selectbox");
		selectBox.addAttribute("id", getFieldValue("select"+i));
		selectBox.addAttribute("procedureName", getFieldValue("selectProcName"+i));
		selectBox.addAttribute("depends", getFieldValue("selectDepends"+i));
		if(!getFieldValue("selectDepends"+i).equals("")){
		

			org.jsoup.nodes.Document  doc = Jsoup.parseBodyFragment(htmlContent);
			Elements links = doc.select("select");
			int len = links.size();
			for(int select_link=0;select_link<len;select_link++){
				if(links.get(select_link).attr("id").equals(getFieldValue("selectDepends"+i))){
					String onclick = "fnLoadDependentSelectbox('"+getFieldValue("select"+i)+"','"+getFieldValue("selectProcName"+i)+"','"+getFieldValue("selectDepends"+i)+"');";
					links.get(select_link).attr("onclick",onclick);
				}
			}
			htmlContent = doc.body().append("<script>fnLoadReportEngineSelectboxes();</script>").html();
		
		}
	}
	if(!getFieldValue("hdnParamsCount").equals(""))
		paramsCount = Integer.parseInt(getFieldValue("hdnParamsCount"));
	for(int i=1;i<paramsCount;i++){
		Element paramsInside = params.addElement("params");
        paramsInside.addAttribute("name", getFieldValue("params"+i));
	}
	html.addCDATA(htmlContent);
	proc.addAttribute("name", getFieldValue("procedure"));
	
	database.addAttribute("name", getFieldValue("databaseName"));
	database.addAttribute("username", getFieldValue("usrName"));
	database.addAttribute("password", getFieldValue("password"));
	
	
    FileOutputStream fos = new FileOutputStream("D:/input_template.xml");
    OutputFormat format = OutputFormat.createPrettyPrint();
    XMLWriter writer = new XMLWriter(fos, format);
    writer.write(document);
    writer.flush();
    
	return super.execute();
}
}
