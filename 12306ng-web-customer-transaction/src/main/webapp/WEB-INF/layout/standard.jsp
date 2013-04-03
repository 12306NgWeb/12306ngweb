<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<!--  DO NOT MODIFY THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!! -->
<!--  This is the Official Version.  If you must, copy it -->
<!--  and propagate all changed to all versions.-->
<!--  DO NOT MODIFY THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!! -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<%-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="featureName" content="<tiles:getAsString name="featureName" />">
<meta http-equiv="appName" content="<tiles:getAsString name="appName" />">

<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/web-resources/isaport" scope="page" />

<c:import url="/WEB-INF/layout/includes.jsp" />

<link rel="icon" 
      type="image/ico" 
      href="${url}/images/favicon.ico"> --%>
      
      

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	<tiles:insertAttribute name="title" ignore="true" />
</title>

<script type="text/javascript" src="jsp/js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="jsp/css/base.css" />
<link rel="stylesheet" type="text/css" href="jsp/css/main.css" />

</head>
<body>
<div class="wrap">
<div id="header"><tiles:insertAttribute name="header" /></div>
<div id="body-content"><tiles:insertAttribute name="body" /></div>
<%-- <div id="private-content"><tiles:insertAttribute name="private-content" /></div> --%>
<div id="footer"><tiles:insertAttribute name="footer" /></div>
</div>
</body>
</html>
