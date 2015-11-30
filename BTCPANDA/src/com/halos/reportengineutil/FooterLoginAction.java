package com.halos.reportengineutil;

public class FooterLoginAction extends HalosBaseAction {
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		getLoginUserId();
		return SUCCESS;
	}
}
