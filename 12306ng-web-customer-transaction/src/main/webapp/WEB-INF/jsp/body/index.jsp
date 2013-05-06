<!-- <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>index-12306ng</title>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head> 

<body>-->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/ngweb" scope="page" />
<script type="text/javascript" src="<c:url value='/js/jquery-ui-1.10.2.custom.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery-ui-1.10.2.custom.css'/>" />

<script src="<c:url value='/js/jquery.validationEngine-zh_CN.js'/>" type="text/javascript" charset="utf-8"></script>
<script src="<c:url value='/js/jquery.validationEngine.js'/>" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="<c:url value='/css/validationEngine.jquery.css'/>" type="text/css"/>

<script type="text/javascript">
		$(document).ready(function(){
			jQuery("#ticketSearch").validationEngine();
			$("#startDate").datepicker({ dateFormat: "yy-mm-dd" });	
			
			
		});
		/* function getSearchResult (startDate){
			var startDate = $("#startDate").val();
			
			$.getresult(startDate);
		} */
		
		


</script>
<div class="ng-wrap">
	<div class="ng-logo"></div>
    <div class="ng-menu">
    	<span>查询</span>
        <span class="blue"><a href="bookticket.html">购票</a></span>
        <span class="blue"><a href="returnticket.html">退票</a></span>
        <span class="blue"><a href="help.html">帮助</a></span>
        <span class="blue"><a href="feedback.html">反馈</a></span>
        <span>|</span>
        
        <c:choose>
		   <c:when test="${loginUserProfile.userName == 'Anonymous'}"> 		      		      
		             <span class="red"><a href="register.html">注册</a></span>
        			<span class="red"><a href="login.html">登录</a></span>
		   </c:when>
		   <c:otherwise> 
		 		<span class="headerlogin fright"><a href="">我的12306</a></span>
			        <div id="myshow" style="display: none;">
			        	<ul>
			            	<li><a href="bookticket.html">车票预定</a></li>
			                <li><a href="order.html">我的订单</a></li>
			                <li><a href="myinfos.html">个人信息</a></li>
			                <li><a href="index.html">登出</a></li>
			            </ul>
			        </div>
		   </c:otherwise>

		</c:choose>        
        
        
    </div>
    
    <form id = "ticketSearch"  action = "ticketlist" method = "post">
    <div class="ng-indexSearch">
    	<input type="text" placeholder="出发地" name=beginStation class="inputtxt validate[required] text-input" value=""/> 
    	<%-- <form:input path = "beginStation" id = "beginStation" placeholder= "StartAddress" class="inputtxt"  /> --%>
         <input type="text" placeholder="目的地" name="arriveStation" class="inputtxt validate[required] text-input" value=""/>
        <%-- <form:input path = "arriveStation" id = "arriveStation" placeholder="EndAddress" class="inputtxt"  /> --%>
        
        <input type="text" placeholder="出发日期" name="startDate"  id = "startDate" class="inputdate validate[required] text-input datepicker" value="" />
        <input type="submit"  id ="go" value="查询" name="search" class="btnsearch f16" " />
        <!-- <input type="reset" value="重置"   class="btnsearch f16" algin="top" /> -->
    </div>   
    </form> 
</div>
<!-- <div class="bottom">
	<img src="../images/bottomlogo.png" alt="12306ng-Logo" width="110" height="40" />
    <span>
    	<a href="">新手上路</a><em>|</em>
        <a href="">常见问题</a><em>|</em>
        <a href="">意见反馈</a><em>|</em>
        <a href="">关于 12306NG</a><em>|</em>
        <a href="">团队成员</a><em>|</em>
        <a href="">联系我们</a>
    </span>
</div> -->

<!-- </body>
</html> -->
