package com.halos.reportengine.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import com.halos.htechdms.halosdms.Hdms.datamanagement.dmsUserAPI.HalosDms;
import com.halos.reportengineutil.HalosBaseAction;

public class DownloadInputtemplate extends HalosBaseAction{

private InputStream fileInputStream;
private String filename ;
public InputStream getFileInputStream() {
 
	return fileInputStream;
   
}

@Override
public String execute() throws Exception {
	
	filename += "-input_template.xml";
	filename = filename.replace(' ', '_');
	fileInputStream = new FileInputStream(new File("D:\\input_template.xml"));
    return SUCCESS;
  
}

public String getFilename() {
	return filename;
}

public void setFilename(String filename) {
	this.filename = filename;
}

public void setFileInputStream(InputStream fileInputStream) {
	this.fileInputStream = fileInputStream;
}

}
