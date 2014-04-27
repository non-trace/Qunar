/**
 * 
 */
package cn.edu.tstc.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import cn.edu.tstc.common.action.BaseAction;
import cn.edu.tstc.common.constants.IComonConst;
import cn.edu.tstc.entity.User;
import cn.edu.tstc.service.ILoginService;
@Namespace("/")
@Results({
	@Result(name = "success", type= "redirect",location = "/index.action"),
	@Result(name = "login", location = "/login.jsp")
})
public class LoginAction extends BaseAction{
	@Resource
	private ILoginService service;
	private String userId;
	private String password;
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String login() throws ServletException, IOException {
		User u =service.login(userId, password);
		if (u!=null) {
			this._request.getSession().setAttribute(IComonConst.LOGIN_USER, u);
			return "success";
		}else {
			return "login";
		}
	}
}
