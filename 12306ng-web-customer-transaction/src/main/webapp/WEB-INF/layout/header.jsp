<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/ngweb" scope="page" />
<!--header start-->
    <div class="header">
        <img src="${url}/jsp/images/headlogo.png" alt="header-logo" width="140" height="50" />
        <span class="headermenu fleft">
            <a href="${url }/home">首页</a>
            <a href="${url }/search">查询</a>
            <a href="${url }/bookticket">购票</a>
            <a href="${url }/returnticket">退票</a>
            <a href="${url }/help">帮助</a>
            <a href="${url }/feedback">反馈</a>
        </span>
        <span class="headerlogin fright"><a href="${url }/register">注册</a><a href="${url }/login">登录</a></span>
    </div>
    <!--header end-->