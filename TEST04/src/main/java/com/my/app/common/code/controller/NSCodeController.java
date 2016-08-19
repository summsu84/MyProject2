package com.my.app.common.code.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.app.common.code.service.NSCodeService;
import com.my.app.common.common.CommandMap;


@Controller
public class NSCodeController {

	Logger log = Logger.getLogger(this.getClass());
	    
	
	@Resource(name="nsCodeService")
	private NSCodeService nsCodeService;
	 
	@RequestMapping(value="/common/NSCodeSearch.do")
	public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception
	{
	    ModelAndView mv = new ModelAndView("/sample/common/NSCodeSearch");
		//ModelAndView mv = new ModelAndView("/sample/common/AjaxTest");
		List<Map<String,Object>> list = nsCodeService.selectNSCodeList(commandMap);
		mv.addObject("list", list);
	     
	    return mv;
	}
	
/*	@RequestMapping(value="/common/NSCodeInsert.do")
	public ModelAndView inseartNSCode(CommandMap commandMap) throws Exception
	{
		System.out.println("InsertNSCode is called.. code : " + commandMap.getMap());
		ModelAndView mv = new ModelAndView("redirect:/common/NSCodeSearch.do");
	     
		nsCodeService.insertNSCode(commandMap.getMap());
		
	    return mv;HttpServletRequest request
	}*/
	@RequestMapping(value="/common/NSCodeInsert.do")
	public ModelAndView inseartNSCode(@RequestParam Map<String, Object> map, ModelMap model) throws Exception{
		
		//CommandMap commandMap = new CommandMap(request.getParameterMap());
		CommandMap commandMap = new CommandMap();
		//commandMap.put("code", request.getParameter("code"));
		//commandMap.put("code_name", request.getParameter("code_name"));
		ModelAndView mv = new ModelAndView("redirect:/common/NSCodeSearch.do");
	     
		System.out.println("Data :"+commandMap.getMap());
		nsCodeService.insertNSCode(map);
		
		
		return mv;
//		DataMap<String, Object> map = Dhx.makeDataMap(request);
//		DBSessionVO dbSessionVO = (DBSessionVO)request.getSession().getAttribute("DBSessionInfo");
//		tempSession = dbChange(dbSessionVO);
//		logger.debug("WEB_OBPL_CU");
//		return Dhx.returnRES("result", humanResourceService.WEB_OBPL_CU(map,tempSession).getString("RETURN_MSG"));		
	}
	
	
	@RequestMapping(value="/common/NSTest.do")
	public String testPage(ModelMap model) throws Exception
	{
		
		return "/sample/common/AjaxTest";
	}
	
	//코드 리스트를 가져온다.
	@RequestMapping("/common/NSCodeCombo.do")
	public @ResponseBody List<Map<String, Object>> setNSCodeCombo(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		List<Map<String,Object>> list = nsCodeService.selectNSCodeList(null);
		
		for(int i = 0 ; i < list.size() ; i++)
		{
			System.out.println("value : " + list.get(i));
		}
	
		return list;
	}	
}

