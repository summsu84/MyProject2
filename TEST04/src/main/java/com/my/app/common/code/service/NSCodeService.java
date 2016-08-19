package com.my.app.common.code.service;

import java.util.List;
import java.util.Map;


public interface NSCodeService {

	List<Map<String, Object>> selectNSCodeList(Map<String, Object> map) throws Exception;
	
	/**
	 * 코드정보 삽입
	 * 
	 * @param BsmDefaultVO
	 * @return Boolean
	 */
	Boolean insertNSCode(Map<String, Object> map)	throws Exception;

}
