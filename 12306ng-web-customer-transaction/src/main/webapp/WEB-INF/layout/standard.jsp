<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">


<%@ include file="/WEB-INF/layout/include.jsp"%>
<html>
<head>

<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/ngweb" scope="page" />

      
      

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	<tiles:insertAttribute name="title" ignore="true" />
</title>

<script type="text/javascript" src="${url}/jsp/js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${url}/jsp/css/base.css" />
<link rel="stylesheet" type="text/css" href="${url}/jsp/css/main.css" />

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
