package cn.edu.tstc.dao;

import cn.edu.tstc.entity.User;
public interface ILoginDao {
	public User login(String userId,String password);
}
