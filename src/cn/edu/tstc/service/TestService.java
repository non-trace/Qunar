/**
 * 
 */
package cn.edu.tstc.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.tstc.common.service.BaseService;
import cn.edu.tstc.dao.ITestDao;
@Service
public class TestService extends BaseService implements ITestService{
	@Resource
	private ITestDao testDao;
	public List<Map<String, Object>> test() {
		return testDao.test();
	}
}
