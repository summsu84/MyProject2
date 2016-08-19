package com.my.app.nsmanage.service;

import java.util.List;
import java.util.Map;


public interface NSManageService {

	List<Map<String, Object>> selectNSCodeList(Map<String, Object> map) throws Exception;
	
	/**
	 * 코드정보 삽입
	 * 
	 * @param BsmDefaultVO
	 * @return Boolean
	 */
	public Boolean insertNSCode(Map<String, Object> map)	throws Exception;

}
