<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
    <!--header start-->
    <!-- <div class="header">
        <img src="../images/headlogo.png" alt="header-logo" width="140" height="50" />
        <span class="headermenu fleft">
            <a href="index.html">é¦é¡µ</a>
            <a href="search.html">æ¥è¯¢</a>
            <a href="bookticket.html">è´­ç¥¨</a>
            <a href="">éç¥¨</a>
            <a href="help.html">å¸®å©</a>
            <a href="feedback.html">åé¦</a>
        </span>
        <span class="headerlogin fright"><a href="register.html">æ³¨å</a><a href="login.html">ç»å½</a></span>
    </div> -->
    <!--header end-->
    
    <!--user login start-->
    <form id ="loginform" action="/ngweb/home/login" method = "post" >
    <input type='hidden' name="associatedTicketId" value="${ticketId}"/>
    
    <fieldset class="userinfors userlogin">
        <legend>登录：</legend>
        <ul>
            <li><label><em>*</em>用户名：</label><input type="text" name="userName" class="inputname" />
            <p>请输入您的用户名</p></li>    			
            <li><label><em>*</em>密码：</label><input type="text" name="password" class="inputname" />
            <p>请输入密码</p></li>
            <li><label><em>*</em>验证码：</label><input type="text" name="securitycode" class="inputname" /><img src="" />
            <p>看不清，<a class="blue" href="">换一张</a></p></li>
        </ul>
    </fieldset>
    <p class="tcenter"><a href="order.html"><input type="submit" name="login" class="btnlogin mr20" value="登录" /></a><a href="register.html"><input type="submit" name="register" class="btnreg" value="注册新账号" /></a></p>
  </form>
    <!--user login end-->
    
    <!--bottom start-->
    <!-- <div class="bottom">
        <img src="../images/bottomlogo.png" alt="12306ng-Logo" width="110" height="40" />
        <span>
            <a href="">æ°æä¸è·¯</a><em>|</em>
            <a href="">å¸¸è§é®é¢</a><em>|</em>
            <a href="">æè§åé¦</a><em>|</em>
            <a href="">å³äº 12306NG</a><em>|</em>
            <a href="">å¢éæå</a><em>|</em>
            <a href="">èç³»æä»¬</a>
        </span>
    </div> -->
    <!--bottom end-->


