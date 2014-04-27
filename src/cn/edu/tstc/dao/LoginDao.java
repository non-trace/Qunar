package cn.edu.tstc.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.edu.tstc.common.dao.BaseDao;
import cn.edu.tstc.entity.User;
import cn.edu.tstc.util.MD5Util;
@Repository
public class LoginDao extends BaseDao implements ILoginDao {
	public User login(String userId,String passWord){
		if (passWord==null) {
			return null;
		}
		String MD5PassWrod = MD5Util.MD5(passWord);
		StringBuffer sqlbBuffer = new StringBuffer();
		sqlbBuffer.append("select * from sys_user s where s.user_id = '").append(userId).append("' and password = '").append(MD5PassWrod).append("'");
		List<Map<String,Object>> u = this.queryForList(sqlbBuffer.toString());
		if (u!=null&&u.size()>0) {
			User user = new User();
			user.setUserId(userId);
			user.setPassWord(passWord);
			user.setUserEmail(u.get(0).get("email").toString());
			user.setUserName(u.get(0).get("user_name").toString());
			return user;
		}
		return null;
	}
}
