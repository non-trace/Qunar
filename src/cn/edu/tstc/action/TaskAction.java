package cn.edu.tstc.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Namespace;

import cn.edu.tstc.common.action.BaseAction;
import cn.edu.tstc.service.ITestService;
@Namespace("/")
public class TaskAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	@Resource
	private ITestService service;
	public String test() throws Exception{
		System.out.println(service.test());;
		this.setOutResponse("OK");
		return null;
	}
}
