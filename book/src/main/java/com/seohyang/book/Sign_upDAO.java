package com.seohyang.book;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Sign_upDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(Sign_upDTO sign_upDTO){
		my.insert("signDAO.insert", sign_upDTO);
	}
	public String select(String id) {
		String result = my.selectOne("signDAO.select", id);
		if(result == null || result.trim().equals("")) {
			result = "1";
			return result;
		}
		else {
			return my.selectOne("signDAO.select", id);			
		}
	}
}
