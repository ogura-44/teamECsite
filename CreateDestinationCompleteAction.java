package com.internousdev.rosso.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.rosso.dao.DestinationInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateDestinationCompleteAction extends ActionSupport implements SessionAware {

	private Map<String,Object>session;

	public String execute() throws SQLException {

		DestinationInfoDAO destinationifodao = new DestinationInfoDAO();
		String result;

		if(!session.containsKey("userId")) {
			return "loginError";
		}

		int flg = destinationifodao.createUser(
				session.get("userId").toString(),
				session.get("familyName").toString(),
				session.get("firstName").toString(),
				session.get("familyNameKana").toString(),
				session.get("firstNameKana").toString(),
				session.get("userAddress").toString(),
				session.get("telNumber").toString(),
				session.get("email").toString()
				);

		if(flg > 0) {
			session.remove("familyName");
			session.remove("firstName");
			session.remove("familyNameKana");
			session.remove("firstNameKana");
			session.remove("userAddress");
			session.remove("telNumber");
			session.remove("email");

			result = SUCCESS;
		} else {
			result = ERROR;
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
