<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/web-resources/isaport" scope="page" />
<script type="text/javascript">
$(document).ready(function () {
    $("ul.dropdown li").hover(function(){
        
        $(this).addClass("hover");
        $('ul:first',this).css('visibility', 'visible');
    
    }, function(){
    
        $(this).removeClass("hover");
        $('ul:first',this).css('visibility', 'hidden');
    
    });
    
    $("ul.dropdown li ul li:has(ul)").find("a:first").append(" &raquo; ");  
});
</script> --%>
<!--header start-->
    <div class="header">
        <img src="jsp/images/headlogo.png" alt="header-logo" width="140" height="50" />
        <span class="headermenu fleft">
            <a href="index.html">首页</a>
            <a href="search.html">查询</a>
            <a href="bookticket.html">购票</a>
            <a href="">退票</a>
            <a href="help.html">帮助</a>
            <a href="feedback.html">反馈</a>
        </span>
        <span class="headerlogin fright"><a href="register.html">注册</a><a href="login.html">登录</a></span>
    </div>
    <!--header end-->