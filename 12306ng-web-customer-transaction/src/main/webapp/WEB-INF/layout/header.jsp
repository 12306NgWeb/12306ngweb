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
        <span class="headerlogin fright"><a href="register.html">注册</a><a href="login.html">登录</a></span>
    </div>
    <!--header end-->