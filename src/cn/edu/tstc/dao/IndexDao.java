/**
 * 
 */
package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.edu.tstc.common.dao.BaseDao;
@Repository
public class IndexDao extends BaseDao implements IIndexDao {
	
	public List<Map<String, Object>> getAttractions(int currentPage) {
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select * from attractions ");
		return this.queryForList(sqlBuffer.toString());
	}
	
	public String getImage(String imageType,String attraction_id){
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("select image_url from image where attractions_id = '").append(attraction_id).append("' and image_type = '").append(imageType).append("'");
		List<Map<String, Object>> l = this.queryForList(sqlBuffer.toString());
		return l.get(0).get("image_url").toString();
	}
}