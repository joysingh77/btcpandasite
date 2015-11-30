package com.halos.reportengine.action;

import java.io.FileOutputStream;

import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.halos.util.commonpackages.HalosBaseAction;

public class CreateOutputTemplate extends HalosBaseAction{
@Override
public String execute() throws Exception {
Document document = DocumentFactory.getInstance().createDocument();
	
	Element root = document.addElement("output_template");
	Element html = root.addElement("html_codes");
	
	String htmlData = "<table><tr>";
	
	int count = Integer.parseInt(getFieldValue("hdnHeadersCount"));
	
	for(int i = 1;i < count; i++){
		htmlData += "<td>"+getFieldValue("header"+i)+"</td>";
	}
	htmlData += "</tr>";
	//htmlData += "/HTML_SEPERATOR/";
	
	html.addCDATA(htmlData);
	
	FileOutputStream fos = new FileOutputStream("D:/output_template.xml");
    OutputFormat format = OutputFormat.createPrettyPrint();
    XMLWriter writer = new XMLWriter(fos, format);
    writer.write(document);
    writer.flush();
	
	return super.execute();
}
}
