package com.halos.reportengineutil;

import java.util.List;

public class LogoutAction extends HalosBaseAction {
	List<Object[]> sessionCodes;
	String billCode;

	public String execute() {
		if (getServletRequest().getSession().getAttribute("first") != null) {
			getServletRequest().getSession().removeAttribute("first");
		}
		getServletRequest().getSession().invalidate();
		return SUCCESS;
	}

	public String getBillCode() {
		return billCode;
	}

	public void setBillCode(String billCode) {
		this.billCode = billCode;
	}

}
