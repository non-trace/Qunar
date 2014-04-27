/**
 * 
 */
package cn.edu.tstc.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import cn.edu.tstc.common.action.BaseAction;
import cn.edu.tstc.entity.Attraction;
import cn.edu.tstc.service.IIndexService;
@Results({
	@Result(name = "success",location = "/index.jsp")
})
public class IndexAction extends BaseAction{
	@Resource
	private IIndexService service;
	private int currentPage;
	private List<Attraction> attractions;
	private List<Attraction> hot;

	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List<Attraction> getAttractions() {
		return attractions;
	}

	/**
	 * @return the hot
	 */
	public List<Attraction> getHot() {
		return hot;
	}
	public String execute(){
		List<Attraction> l = service.getAttractions(currentPage);
		hot = l.subList(0, 3);
		attractions = l.subList(3,l.size());
		System.out.println(hot);
		System.out.println(attractions);
		return SUCCESS;
	}
}
