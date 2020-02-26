package com.internousdev.rosso.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class CreateDestinationAction extends ActionSupport implements SessionAware {

	private Map<String, Object>session;

	public String execute() {

		String result = SUCCESS;

		//ログインしてない状態で宛先情報登録機能を押したらerrorを返す
		String flg = session.get("logined").toString();
		int logined = Integer.valueOf(flg);
		if(logined == 0) {
			return "loginError";
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
