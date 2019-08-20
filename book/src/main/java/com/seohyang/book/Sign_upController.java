package com.seohyang.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Sign_upController {
	
	@Autowired
	Sign_upDAO dao;
	
	@RequestMapping("insert.do")
	public void name(Sign_upDTO sign_upDTO) {
		dao.insert(sign_upDTO);
	}
	
}
