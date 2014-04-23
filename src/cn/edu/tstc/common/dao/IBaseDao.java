/**
 * 
 */
package cn.edu.tstc.common.dao;

import java.util.List;
import java.util.Map;

/**
 * 项目名称：Qunar
 * 类名称：IBaseDao
 * 类描述:
 * 创建人：姚洪肖   
 * 创建时间：2014-4-16 下午10:43:56   
 * 修改人：姚洪肖  
 * 修改时间：2014-4-16 下午10:43:56    
 * 修改备注：   
 * @version
 */

public interface IBaseDao {
	public List<Map<String,Object>> queryForList(String sql);
	public void execute(String sql);
}
