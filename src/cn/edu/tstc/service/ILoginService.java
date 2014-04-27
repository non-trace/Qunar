/**
 * 
 */
package cn.edu.tstc.service;

import cn.edu.tstc.entity.User;
public interface ILoginService {
	public User login(String userId,String password);
}
