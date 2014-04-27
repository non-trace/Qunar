/**
 * 
 */
package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;
public interface IAttractionDao {
	public List<Map<String,Object>> getAttractionById(String attraction_id);
}
