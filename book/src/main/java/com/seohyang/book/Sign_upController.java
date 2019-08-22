package com.seohyang.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Sign_upController {
	
	@Autowired
	Sign_upDAO dao;
	
	@RequestMapping("insert.do")
	public String insert(Sign_upDTO sign_upDTO) {
		dao.insert(sign_upDTO);
		return "sign_upView";
	}
	@RequestMapping("select.do")
	public String select(String id, Model model) /*여기서 만드는 것은 프로토 타입*/ {
		String check = dao.select(id);
		model.addAttribute("check", check);
		return "id_check";
	}
}
