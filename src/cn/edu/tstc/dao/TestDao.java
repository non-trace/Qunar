/**
 * 
 */
package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.edu.tstc.common.dao.BaseDao;
@Repository
public class TestDao extends BaseDao implements ITestDao{
	public List<Map<String, Object>> test(){
		String sql = "select * from attractions";
		return this.queryForList(sql);
	}
}
