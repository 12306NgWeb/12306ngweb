<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/ngweb" scope="page" />
<!-- <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>register-user-information</title>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head>

<body>
<div class="wrap"> -->
    <!--header start-->
<!--     <div class="header">
        <img src="../images/headlogo.png" alt="header-logo" width="140" height="50" />
        <span class="headermenu fleft">
            <a href="index.html">首页</a>
            <a href="search.html">查询</a>
            <a href="bookticket.html">购票</a>
            <a href="returnticket.html">退票</a>
            <a href="help.html">帮助</a>
            <a href="feedback.html">反馈</a>
        </span>
        <span class="headerlogin fright"><a href="register.html">注册</a><a href="login.html">登录</a></span>
    </div> -->
    <!--header end-->
	<script type="text/javascript" src="<c:url value='/js/jquery-ui-1.10.2.custom.js'/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery-ui-1.10.2.custom.css'/>" />
	
	<script src="<c:url value='/js/jquery.validationEngine-zh_CN.js'/>" type="text/javascript" charset="utf-8"></script>
	<script src="<c:url value='/js/jquery.validationEngine.js'/>" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" href="<c:url value='/css/validationEngine.jquery.css'/>" type="text/css"/>

	<script type="text/javascript"> 
		$(function(){
			jQuery("#registerform").validationEngine();
		});
	</script>
    <!--user information for register start-->
    <form id="registerform" action="${url }/member/registersuccess" method="post">
	   <fieldset class="userinfors baseinfos">
           <legend>基本信息：</legend>
           <ul>
               <li><label><em>*</em>用户名：</label><input type="text" name="userName" class="inputname validate[required,minSize[6],maxSize[30],custom[noSpecialChars]] text-input" />
               <p>用户名由字母、数字或“_”组成，长度不少于6位，不多于30位</p></li>
               <li><label><em>*</em>密码：</label><input type="password" id="password"  name="password" class="inputname validate[required,minSize[6]] text-input" />
               <p>密码不得少于6位字符</p></li>
               <li><label><em>*</em>确认密码：</label><input type="password" name="pwd" class="inputname validate[required,equals[password]] text-input" />
               <p>请再次输入密码</p></li>
               <li><label><em>*</em>验证码：</label><input type="text" name="securitycode" class="inputname validate[required] text-input" /><img src="" />
               <p>看不清，<a class="blue" href="">换一张</a></p></li>
           </ul>
       </fieldset>
       <fieldset class="userinfors detailinfos">
           <legend>详细信息：</legend>
           <ul>
               <li><label><em>*</em>姓名：</label><input type="text" name="name" class="inputname validate[required,custom[noSpecialChars]] text-input" />
               <p>请输入与身份证一致的姓名，生僻字请用小写拼音，如：“李森”可输入“李shen”</p></li>              
               <li><label><em>*</em>性别：</label><input type="radio" name="sex" class="validate[required] radio" /><label style="width:20px; margin-right:20px;">男</label><input type="radio" name="sex" class="validate[required] radio" /><label style="width:20px;">女</label></li>
               <li><label><em>*</em>国家/地区：</label><input type="text" name="nationality" class="inputname validate[required] text-input" />
               <p>请选择所属的国家</p></li>
               <li><label><em>*</em>证件类型：</label><input type="text" name="idType" class="inputname validate[required] text-input" />
               <p>请选择证件类别</p></li>
               <li><label><em>*</em>证件号码：</label><input type="text" name="idCardNo" class="inputname validate[required] text-input" />
               <p>请填写您的证件号码</p></li>
               <li><label><em>*</em>手机号码：</label><input type="text" name="phoneNo" class="inputname validate[required,custom[number]] text-input" />
               <p>请正确填写手机号，以便正常接收铁路客户服务信息</p></li>
               <li><label><em>*</em>电子邮箱：</label><input type="text" name="email" class="inputname validate[required,custom[email]] text-input" />
               <p>请正确填电子邮箱地址，以便正常接收铁路客户服务信息</p></li>
               <li><label><em>*</em>旅客类型：</label><input type="text" name="passengerType" class="inputname validate[required] text-input" />
               </li>
           </ul>
       </fieldset>
	   <p class="tcenter"><a href="${url }/registersuccess.html"><input type="submit" name="goregister" class="goreg" value="提交注册信息" /></a></p>
    </form>
    <!--user information for register end-->
    
    <!--bottom start-->
<!--     <div class="bottom">
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
    <!--bottom end-->
<!-- </div>
</body>
</html> -->
