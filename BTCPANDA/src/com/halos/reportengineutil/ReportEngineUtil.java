package com.halos.reportengineutil;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.half.core.util.ApplicationProperty;
import com.halos.htechdms.halosdms.Hdms.datamanagement.api.ITempDocumentMaintainAPI;
import com.halos.htechdms.halosdms.Hdms.datamanagement.api.ITempDocumentMaintainDetailAPI;
import com.halos.htechdms.halosdms.Hdms.datamanagement.dmsUserAPI.HalosDms;
import com.halos.htechdms.halosdms.Hdms.datamanagement.entity.TempDmsDocDetailDto;
import com.halos.htechdms.halosdms.Hdms.datamanagement.entity.TempDmsDocDto;

public class ReportEngineUtil {
	public static Long uploadDocument(String filePath,String fileName){
		File _uploadfileList = new File(filePath);
		
		String category = "XML Document";
		
		Long docId = null;
		
		try {


			if(_uploadfileList!=null){	
				
				ITempDocumentMaintainAPI tempDocAPI=(ITempDocumentMaintainAPI)HalfBeanFactory.getBean("TempDocumentMaintainAPI");
				TempDmsDocDto tempDTO = new TempDmsDocDto();
				tempDTO.setStatus("A");
				Long tempDmsDocId=tempDocAPI.persist(tempDTO);

				ITempDocumentMaintainDetailAPI tempdetailAPI=(ITempDocumentMaintainDetailAPI)HalfBeanFactory.getBean("TempDocumentMaintainDetailAPI");
				
					File file = _uploadfileList;
					TempDmsDocDetailDto detailDto= new TempDmsDocDetailDto();
					detailDto.setDescription(category);
					detailDto.setStatus("A");
					detailDto.setTempDmsDocId(tempDmsDocId);
					Long tempdetailId= tempdetailAPI.persist(detailDto);

					byte[] fileBytes=HalosDms.getBytesFromFile(file);
					String fileLocation= writeDocuments(fileBytes,tempDmsDocId,tempdetailId,category,fileName);
					detailDto = new TempDmsDocDetailDto();
					detailDto=tempdetailAPI.findById(tempdetailId);
					detailDto.setLocation(fileLocation);
					tempdetailAPI.update(detailDto);

					//docId=HalosDms.moveToDmsFair(tempDmsDocId, category);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return docId;
	}
	public static  String writeDocuments(byte[] document,Long tmpDocId,Long tmpDetailId,String desc,String docName)
	{
		String TempDocFolder=ApplicationProperty.getStringValue("tempDmsDocFolder");

		String fileName =(tmpDocId+"")+"_"+(tmpDetailId+"")+"_halosdmsfile_"+docName;

		try {
				File tempFolder = new File(TempDocFolder);
				if(!tempFolder.exists())
				{
				tempFolder.mkdir();
				}

			File newFile = new File(TempDocFolder+"/"+ fileName);
			
			newFile.createNewFile();

			FileOutputStream fos = new FileOutputStream(new File(TempDocFolder+"/"+ fileName));
		
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			
		
			bos.write(document);

			bos.flush();
			bos.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	return TempDocFolder+"/"+fileName;
	}
	
	public static Map<String, String> readInputTemplate (String template){
		Map<String, String> map = new HashMap<String, String>();
		try {
			String jspCode = "";
			
			SAXReader reader = new SAXReader();
			Document document = reader.read(template);
			Element element = document.getRootElement();
			for(Iterator i=element.elements().iterator();i.hasNext();){
				Element ele = (Element)i.next();
				if(ele.getName().equals("html_codes"))
					jspCode = ele.getText();
				else if(ele.getName().equals("selectboxes"))
				{
					String select = "";
					for(Iterator its=ele.elements().iterator();its.hasNext();){
						Element element2 = (Element)its.next();
						
						
						
						if(element2.attributeValue("depends").equals("")){
							select += element2.attributeValue("id")+":"+element2.attributeValue("procedureName")+",";
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
		return map;
		
	}
	
	public static String buildURL(HttpServletRequest request){
		URL recontructedUrl = null;
		try {
			String file = request.getRequestURI();
			if(request.getQueryString()!=null){
				file += "?"+request.getQueryString();
			}
			recontructedUrl = new URL (request.getScheme(),request.getServerName(),request.getServerPort(),file);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return recontructedUrl.toString();
	}
	public static ResultSet getAllDatabases(){
		ResultSet resultSet = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1/","root","");
			 resultSet =  con.getMetaData().getCatalogs();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
		
	}
	public static ResultSet getAllProcedurs(String databasename){
		ResultSet resultSet = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1/"+databasename,"root","");
			 resultSet = con.getMetaData().getProcedures(null, null, "%");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
		
	}
}
