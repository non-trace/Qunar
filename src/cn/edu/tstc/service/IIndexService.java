/**
 * 
 */
package cn.edu.tstc.service;

import java.util.List;

import cn.edu.tstc.entity.Attraction;
public interface IIndexService {
	public List<Attraction> getAttractions(int currentPage);
}
