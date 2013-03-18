<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.hp.it.isaport.common.utils.ExceptionUtil"%>
<%@page import="org.springframework.web.servlet.handler.SimpleMappingExceptionResolver"%>
<H1>Something went wrong!</H1>
<%
	Exception exception = (Exception)request.getAttribute(SimpleMappingExceptionResolver.DEFAULT_EXCEPTION_ATTRIBUTE);
	
	// this prints a 
	if(null != exception){
		out.print(ExceptionUtil.getFriendlyErrorInfo(exception));
	}
%>
