/**
 * 
 */
package cn.edu.tstc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.tstc.dao.IIndexDao;
import cn.edu.tstc.entity.Attraction;
@Service
public class IndexService implements IIndexService {
	@Resource
	private IIndexDao dao;
	public List<Attraction> getAttractions(int currentPage){
		List<Attraction> attractions = new ArrayList<Attraction>();
		List<Map<String, Object>> l =  dao.getAttractions(currentPage);
		for (Map<String, Object> map : l) {
//			| attractions_id | attractions_name | attractions_describe | attractions_time | attractions_phone | attractions_address        | attractions_ticket_info | attractions_detailed_information |
			Attraction a = new Attraction();
			String attraction_id = map.get("attractions_id").toString();
			a.setAttractions_id(Integer.parseInt(attraction_id));
			a.setAttractions_name(map.get("attractions_name")!=null?map.get("attractions_name").toString():"");
			a.setAttractions_describe(map.get("attractions_describe")!=null?map.get("attractions_describe").toString():"");
			a.setAttractions_phone(map.get("attractions_phone")!=null?map.get("attractions_phone").toString():"");
			a.setAttractions_time(map.get("attractions_time")!=null?map.get("attractions_time").toString():"");
			a.setAttractions_address(map.get("attractions_address")!=null?map.get("attractions_address").toString():"");
			a.setAttractions_ticket_info(map.get("attractions_ticket_info")!=null?map.get("attractions_ticket_info").toString():"");
			a.setImage_url(dao.getImage("banner", attraction_id));
			a.setPage1_image_url(dao.getImage("page1", attraction_id));
			attractions.add(a);
		}
		System.out.println(attractions);
		return attractions;
	}
}
