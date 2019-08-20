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
	
}
