package com.my.app.common.code.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.my.app.common.code.dao.NSCodeDAO;
import com.my.app.common.code.service.NSCodeService;


@Service("nsCodeService")
public class NSCodeServiceImpl implements NSCodeService{

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="nsCodeDAO")
	private NSCodeDAO nsCodeDAO;
	
	@Override
	public List<Map<String, Object>> selectNSCodeList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return nsCodeDAO.selectCodeList(map);
	}

	@Override
	public Boolean insertNSCode(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		// NSCode를 Insert
		nsCodeDAO.insertNSCode(map);
	
		return null;
	}

}
