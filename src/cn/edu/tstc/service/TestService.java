/**
 * 
 */
package cn.edu.tstc.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import cn.edu.tstc.common.service.BaseService;

/**
 * 项目名称：Qunar
 * 类名称：TestService
 * 类描述:
 * 创建人：姚洪肖   
 * 创建时间：2014-4-7 下午5:20:01   
 * 修改人：姚洪肖  
 * 修改时间：2014-4-7 下午5:20:01    
 * 修改备注：   
 * @version
 */
@Service
public class TestService extends BaseService implements ITestService{
	public List<Map<String, Object>> test() {
		String sql = "select * from test";
		return this.baseDao.queryForList(sql);
	}
}
