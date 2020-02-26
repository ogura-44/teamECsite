package com.internousdev.rosso.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.rosso.dao.UserInfoDAO;
import com.internousdev.rosso.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private UserInfoDTO userinfodto;

	public String execute() {

		UserInfoDAO userinfodao = new UserInfoDAO();
		userinfodto = userinfodao.getMypageUserInfo(session.get("userId").toString());
		String flg = session.get("logined").toString();
		int logined = Integer.valueOf(flg);

		if(logined == 0) {
			return "loginError";
		}

		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public UserInfoDTO getUserinfodto() {
		return userinfodto;
	}

	public void setUserinfodto(UserInfoDTO userinfodto) {
		this.userinfodto = userinfodto;
	}

}
