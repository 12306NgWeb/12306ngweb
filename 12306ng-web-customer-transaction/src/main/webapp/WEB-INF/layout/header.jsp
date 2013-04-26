<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/ngweb" scope="page" />
<!--header start-->
    <div class="header">
        <img src="<c:url value='/images/headlogo.png'/>" alt="header-logo" width="140" height="50" />
        <span class="headermenu fleft">
            <a href="index.html">首页</a>
            <a href="search.html">查询</a>
            <a href="bookticket.html">购票</a>
            <a href="">退票</a>
            <a href="${url}/show/help">帮助</a>
            <a href="feedback.html">反馈</a>

        </span>
		
     <c:choose>
		   <c:when test="${loginUserProfile.userName == 'Anonymous'}"> 		      		      
		           <span class="headerlogin fright"><a href="register.html">注册</a><a href="login.html">登录</a></span>
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
    <!--header end-->