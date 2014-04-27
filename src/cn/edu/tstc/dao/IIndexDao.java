/**
 * 
 */
package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;
public interface IIndexDao {
	public List<Map<String, Object>> getAttractions(int currentPage);
	public String getImage(String imageType,String attraction_id);
}
