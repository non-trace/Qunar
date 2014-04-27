/**
 * 
 */
package cn.edu.tstc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.tstc.dao.ILoginDao;
import cn.edu.tstc.entity.User;
@Service
public class LoginService implements ILoginService{
	@Resource
	private ILoginDao dao;
	public User login(String userId,String password){
		return dao.login(userId, password);
	}
}
