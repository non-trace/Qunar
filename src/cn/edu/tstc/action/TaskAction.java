package cn.edu.tstc.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Namespace;

import cn.edu.tstc.common.action.BaseAction;
import cn.edu.tstc.service.ITestService;

/**
 * 项目名称：Qunar
 * 类名称：TaskAction
 * 类描述:
 * 创建人：姚洪肖   
 * 创建时间：2014-4-7 下午5:18:31   
 * 修改人：姚洪肖  
 * 修改时间：2014-4-7 下午5:18:31    
 * 修改备注：   
 * @version
 */
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
