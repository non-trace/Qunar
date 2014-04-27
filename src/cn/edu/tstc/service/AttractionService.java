/**
 * 
 */
package cn.edu.tstc.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.tstc.dao.IAttractionDao;
import cn.edu.tstc.dao.IndexDao;
import cn.edu.tstc.entity.Attraction;
@Service
public class AttractionService implements IAttractionService {
	@Resource
	private IAttractionDao dao;
	@Resource
	private IndexDao indexDao;
	public Attraction getAttractionById(String attraction_id){
		List<Map<String,Object>> l = dao.getAttractionById(attraction_id);
		Map<String, Object> map = l.get(0);
		Attraction a = new Attraction();
		a.setAttractions_id(Integer.parseInt(attraction_id));
		a.setAttractions_name(map.get("attractions_name")!=null?map.get("attractions_name").toString():"");
		a.setAttractions_describe(map.get("attractions_describe")!=null?map.get("attractions_describe").toString():"");
		a.setAttractions_phone(map.get("attractions_phone")!=null?map.get("attractions_phone").toString():"");
		a.setAttractions_time(map.get("attractions_time")!=null?map.get("attractions_time").toString():"");
		a.setAttractions_address(map.get("attractions_address")!=null?map.get("attractions_address").toString():"");
		a.setAttractions_ticket_info(map.get("attractions_ticket_info")!=null?map.get("attractions_ticket_info").toString():"");
		a.setAttractions_detailed_information(map.get("attractions_detailed_information")!=null?map.get("attractions_detailed_information").toString():"");
		a.setImage_url(indexDao.getImage("banner", attraction_id));
		a.setPage1_image_url(indexDao.getImage("page1", attraction_id));
		return a;
	}
}
