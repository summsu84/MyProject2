package com.my.app.common.code.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.my.app.common.dao.AbstractDAO;


@Repository("nsCodeDAO")
public class NSCodeDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCodeList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		
		
		return (List<Map<String, Object>>)selectList("NSCode.selectNSCodeList", map);		//NSCode는 namespace와 연결된다..
	}
	
	public void insertNSCode(Map<String, Object> map) throws Exception{
		
		insert("NSCode.insertNSCode", map);
	}

}
