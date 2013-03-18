<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<!--  DO NOT MODIFY THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!! -->
<!--  This is the Official Version.  If you must, copy it -->
<!--  and propagate all changed to all versions.-->
<!--  DO NOT MODIFY THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!! -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="featureName" content="<tiles:getAsString name="featureName" />">
<meta http-equiv="appName" content="<tiles:getAsString name="appName" />">

<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/web-resources/isaport" scope="page" />

<c:import url="/WEB-INF/layout/includes.jsp" />

<link rel="icon" 
      type="image/ico" 
      href="${url}/images/favicon.ico">
<title>
	<tiles:insertAttribute name="title" ignore="true" />
</title>

</head>
<body>
	<table  style="border-collapse: collapse;" cellpadding="2"
		cellspacing="2" align="center" width="1000px">
		<tbody>
			<tr>
				<td colspan="2" style="background-color:#fff;" >
					<c:import url = "/WEB-INF/layout/header.jsp" />
				</td>
			</tr>
			<tr>
				<td width="150" height="246px" valign="top" style="background-color:#fff;border-right: 1px solid #E6EBEE;">
					<div id="leftNav">
						<tiles:insertAttribute name="staticMenu" />
						<tiles:insertAttribute name="serviceMenu" ignore="true" />
					</div>
				</td>
				<td valign="top" width="754px" style="background-color:#fff;">
					<div id="mainContent" style="min-height:500px;">
						<tiles:insertAttribute name="breadcrumb" ignore="true" />
							<div class="gloabalError">
								<span class="close">X</span>
								<div id="gloabalError"></div>
							</div>
						<tiles:insertAttribute name="body" />
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" colspan="2" style="background-color:#fff;border-top: 4px solid #E6EBEE;">
					<div id="footer" >
						<c:import url = "/WEB-INF/layout/footer.jsp" />
					</div>
					<div id="errorDialog" style="display: none;" title="Error">
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
