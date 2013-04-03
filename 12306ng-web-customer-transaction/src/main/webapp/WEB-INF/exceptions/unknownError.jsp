<%@page import="com.hp.it.isaport.common.utils.ExceptionUtil"%>
<%@page import="org.springframework.web.servlet.handler.SimpleMappingExceptionResolver"%>
<%@page import="com.hp.it.isaport.exception.ISAPortException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<H1>UNKNOWN ERROR</H1>
<%
	Exception exception = (Exception)request.getAttribute(SimpleMappingExceptionResolver.DEFAULT_EXCEPTION_ATTRIBUTE);
	
	if(null != exception){
		out.print(ExceptionUtil.getFriendlyErrorInfo(exception));
	}
%>
