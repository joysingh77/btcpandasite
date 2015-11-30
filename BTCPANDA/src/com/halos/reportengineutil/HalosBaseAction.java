package com.halos.reportengineutil;

import java.security.MessageDigest;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.halos.basic.api.IImageAPI;
import com.halos.basic.entity.Image;
import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.half.core.struts.action.BaseAction;
import com.halos.htechsecurity.halossecurity.security.permissions.api.IUserAPI;
import com.halos.htechsecurity.halossecurity.security.permissions.api.IUserPermissionsAPI;
import com.halos.htechsecurity.halossecurity.security.permissions.entity.User;

public class HalosBaseAction extends BaseAction {

	/**
	 * @author HALOS TECHNOLOGIES
	 */
	public static final long serialVersionUID = 1L;
	public Long getLoginUserId() {
		User userDTO = (User) getServletRequest().getSession().getAttribute("USER_SESSION");
		if (userDTO == null) {
			userDTO = getSessionUserDetails(getServletRequest());
		}
		return new Long(userDTO.getUserId());
	}

	public static User getSessionUserDetails(HttpServletRequest req) {
		User userDTO = (User) req.getSession().getAttribute("USER_SESSION");
		if (userDTO == null) {
			IUserAPI userAPI = (IUserAPI) HalfBeanFactory.getBean("UserAPI");
			userDTO = userAPI.getSessionUser(req);
			req.getSession().setAttribute("USER_SESSION",userDTO);
		}
		return userDTO;
	}

	public Long getLoginContactId() {
		User userDTO = (User) getServletRequest().getSession().getAttribute("USER_SESSION");
		if (userDTO == null) {
			userDTO = getSessionUserDetails(getServletRequest());
		}
		return new Long(userDTO.getContactId());
	}
	public String getLoginUserName() {
		User userDTO = (User) getServletRequest().getSession().getAttribute("USER_SESSION");
		if (userDTO == null) {
			userDTO = getSessionUserDetails(getServletRequest());
		}
		return userDTO.getUserName();
	}	

	public boolean isLoginAdmin() {
		User userDTO = (User) getServletRequest().getSession().getAttribute("USER_SESSION");
		if (userDTO == null) {
			IUserAPI userAPI = (IUserAPI) HalfBeanFactory.getBean("UserAPI");
			userDTO = userAPI.getSessionUser(getServletRequest());
			getServletRequest().getSession().setAttribute("USER_SESSION", userDTO);
		}
		if(userDTO.getIsAdmin() != null && userDTO.getIsAdmin().equals("1")) {
			return true;
		}
		return false;
	}


	public byte[] getImageFromImageTable(Image image) {
		IImageAPI imageAPI = (IImageAPI) HalfBeanFactory.getBean("ImageAPI");
		List dto = (List) imageAPI.findByExample(image);
		if (dto.isEmpty())
			return null;
		else
			return ((Image) dto.get(0)).getImage();
	}

	public Image getImageFromImageTable(long imageId) {
		IImageAPI imageAPI = (IImageAPI) HalfBeanFactory.getBean("ImageAPI");
		Image dto = (Image) imageAPI.findById(imageId);
		if (dto != null)
			return dto;
		else
			return null;
	}

	public synchronized static String encrypt(String plaintext) throws Exception {
		MessageDigest md = null;
		try {
			// here we are specifying the algorithm types
			// such as MD5, SHA, SHA-1, SHA-256, SHA-512
			// here we are using SHA
			md = MessageDigest.getInstance("MD5"); // step 2
		} catch (Exception e) {
		}
		try {
			// Feed the byte array to the digester.
			md.update(plaintext.getBytes("UTF-8")); // step 3
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
		// this method will do padding
		byte raw[] = md.digest(); // step 4
		// if we want to encrypt this byte we can go through the BASE64Encoder
		// currently this method is not using
		// String hash = (new BASE64Encoder()).encode(raw); //step 5

		// after going through the digest the byte will be converted to Hex
		String encryptedValue = byteArrayToHexStr(raw);
		return encryptedValue; // step 6
	}

	static String byteArrayToHexStr(byte[] data) {
		String output = "";
		String tempStr = "";
		int tempInt = 0;
		for (int count = 0; count < data.length; count++) {
			// Deposit a byte into the 8 lsb of an int.
			tempInt = data[count] & 0xFF;
			// Get hex representation of the int as a
			// string.
			tempStr = Integer.toHexString(tempInt);
			// Append a leading 0 if necessary so that
			// each hex string will contain two
			// characters.
			if (tempStr.length() == 1)
				tempStr = "0" + tempStr;
			// Concatenate the two characters to the
			// output string.
			output = output + tempStr;
		}// end for loop
		return output.toUpperCase();
	}// end byteArrayToHexStr
	
     public static Long getPersonType(Long userId) {
		Long personType = null;
		//write something
		IUserAPI userApi = (IUserAPI) HalfBeanFactory.getBean("UserAPI");
    	User userDTO = userApi.findById(userId);
    	if(userDTO!=null && !userDTO.equals("")){
    		personType = userDTO.getPhyLocId();
    	}
		return personType;
	}
	public static User getContactDetailsByUserId(Long userId) {
		IUserAPI userApi = (IUserAPI) HalfBeanFactory.getBean("UserAPI");
		User userDTO = userApi.findById(userId);
		return userDTO;
	}
	
	public static String getDateInIndiaFormat(Date date) {
		String indianDateStyle =null;//DD/mm/YYYY
		try {
			String[] arrStr =  (date+"").split(" ");//eliminate 00:00:00
			String[] dateStr =arrStr[0].split("-");
			
			indianDateStyle = dateStr[2]+"-"+dateStr[1]+"-"+dateStr[0];
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return indianDateStyle;
	}
	
	public static String getDateInIndiaFormatWithTime(Date date) {
		String indianDateStyle =null;//DD/mm/YYYY
		try {
			String[] arrStr =  (date+"").split(" ");//eliminate 00:00:00
			String[] dateStr =arrStr[0].split("-");
			
			indianDateStyle = dateStr[2]+"-"+dateStr[1]+"-"+dateStr[0]+" "+arrStr[1].split("\\.")[0];
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return indianDateStyle;
	}
	
	public static String getDateInGlobalFormat(Date date) {
		String indianDateStyle =null;//DD/mm/YYYY
		try {
			String[] arrStr =  (date+"").split(" ");//eliminate 00:00:00
			String[] dateStr =arrStr[0].split("-");
			
			indianDateStyle = dateStr[1]+"/"+dateStr[2]+"/"+dateStr[0];
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return indianDateStyle;
	}
	
	public List getLoginUserMenuPermissions() {
		if(getServletRequest().getSession().getAttribute("USER_MENU_PERMISSIONS") == null) {
			IUserPermissionsAPI userPermissionsAPI = (IUserPermissionsAPI) HalfBeanFactory.getBean("UserPermissionsAPI");
			List permittedMenus = userPermissionsAPI.getUserMenuPermissions(getLoginUserId());
			getServletRequest().getSession().setAttribute("USER_MENU_PERMISSIONS",permittedMenus);
			return permittedMenus;
		} else {
			return (List) getServletRequest().getSession().getAttribute("USER_MENU_PERMISSIONS");
		}
	}
	public static List getUserMenuPermissions(Long userId) {
		IUserPermissionsAPI userPermissionsAPI = (IUserPermissionsAPI) HalfBeanFactory.getBean("UserPermissionsAPI");
		return userPermissionsAPI.getUserMenuPermissions(userId);
	}
	

}
