<%@page import="com.seohyang.book.Sign_upDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)request.getAttribute("check");
	if (id != "1") {
		out.write("NO");
	} else {
		out.write("YES");
	}
%>
