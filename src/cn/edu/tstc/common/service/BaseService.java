package cn.edu.tstc.common.service;
import cn.edu.tstc.common.dao.BaseDao;
public class BaseService implements IBaseService{
	protected BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
}
