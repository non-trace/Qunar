package cn.edu.tstc.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import cn.edu.tstc.common.action.BaseAction;
import cn.edu.tstc.entity.Attraction;
import cn.edu.tstc.service.IAttractionService;
@Results({@Result(name="success",location = "/program.jsp")})
public class AttractionAction extends BaseAction {
	private Attraction attraction;
	@Resource
	private IAttractionService service;
	private String attraction_id;
	public Attraction getAttraction(){
		return this.attraction;
	}
	public void setAttraction_id(String attraction_id){
		this.attraction_id = attraction_id;
	}
	@Override
	public String execute() throws Exception {
		attraction = service.getAttractionById(attraction_id);
		return super.execute();
	}
}
