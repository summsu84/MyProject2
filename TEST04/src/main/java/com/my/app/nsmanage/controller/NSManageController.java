package com.my.app.nsmanage.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.app.vo.DailyNSInfoVO;


@Controller
public class NSManageController {

	Logger log = Logger.getLogger(this.getClass());
	    
	    
    //Index 이동 
	@RequestMapping("/nsmanage/DailyNSManageSearch.do")
	public String selectNSManage(ModelMap model) {
		
		return "/sample/nsmanage/DailyNSManageSearch";
	}
	
    //일별영양소 등록 페이지 이동
	@RequestMapping("/nsmanage/DailyNSManageInsertForm.do")
	public String insertNSManageForm(ModelMap model) {
		
		return "/sample/nsmanage/DailyNSManageInsertForm";
	}
	
    //일별영양소 등록 /nsmanage/DailyNSManageInsert.do @RequestBody List<Map<String, Object>> requestMap,
	@RequestMapping(value="/nsmanage/DailyNSManageInsert.do", method=RequestMethod.POST)
	@ResponseBody
	/*public String insertNSManage(@ModelAttribute("dailyNSInfoVO") DailyNSInfoVO dailyNSInfoVO,
			@RequestParam("reg_date") String reg_date, @RequestParam("ns_code") String ns_code,
			@RequestParam("ns_quantity") String ns_quantity, @RequestParam("ns_content") String ns_content,
			@RequestParam("ns_notify") String ns_notify, ModelMap map) {*/
	public String insertNSManage(@ModelAttribute("dailyNSInfoVO") DailyNSInfoVO dailyNSInfoVO,
			 ModelMap map) {
		
		System.out.println("RequestForm : " + dailyNSInfoVO.toString());
			
		//search 페이지로 이동하기 .. 
		
		//return "/sample/nsmanage/DailyNSManageInsertForm";
		return null;
	}
	
	
    //일별영양소 업데이트 이동 
	@RequestMapping("/nsmanage/DailyNSManageUpdate.do")
	public String updateNSManage(ModelMap model) {
		
		return "/sample/nsmanage/DailyNSManageUpdate";
	}
}

