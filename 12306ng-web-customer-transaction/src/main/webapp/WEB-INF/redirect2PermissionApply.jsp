<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%@page import="com.hp.it.isaport.plugin.spring.ExceptionViewMappingResolver" %>
<script>
	window.location = '<%=ExceptionViewMappingResolver.PERMISSION_APPLY_URL%>';
</script>