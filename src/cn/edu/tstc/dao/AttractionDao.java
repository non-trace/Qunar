/**
 * 
 */
package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.edu.tstc.common.dao.BaseDao;
@Repository
public class AttractionDao extends BaseDao implements IAttractionDao{
	public List<Map<String,Object>> getAttractionById(String attraction_id){
		StringBuffer sqlbuBuffer = new StringBuffer();
		sqlbuBuffer.append("select * from attractions a where a.attractions_id = '").append(attraction_id).append("'");
		return this.queryForList(sqlbuBuffer.toString());
	}
}
