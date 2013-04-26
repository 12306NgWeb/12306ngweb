<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>register-user-information</title>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head>

<body>
<div class="wrap">
    <!--header start-->
    <div class="header">
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
    </div>
    <!--header end-->
    
    <!--find password by phone start-->
    <form action="">
    	<fieldset class="userinfors userlogin">
        	<legend>通过手机找回密码</legend>
			<ul>
				<li><label><em>*</em>手机号码：</label><input type="text" name="userName" class="inputname" />
				<p>请输入您注册时候填写的手机号码</p></li>	
				<li><label><em>*</em>验证码：</label><input type="submit" name="clear" class="btncode mr10" value="获取短信验证码" /><input type="text" name="userName" class="inputcode" />
				<p>系统将在一分钟之内向您发送验证码，请注意查收短信</p></li>
			</ul>
        </fieldset>
		<p class="tcenter"><a href="resetpwd.html"><input type="submit" name="submit" class="btnlogin mr20" value="提交" /></a><input type="submit" name="clear" class="btnreg" value="清空" /></p>
    </form>
  
    <!--find password by phone end-->
    
    <!--bottom start-->
    <div class="bottom">
        <img src="../images/bottomlogo.png" alt="12306ng-Logo" width="110" height="40" />
        <span>
            <a href="">新手上路</a><em>|</em>
            <a href="">常见问题</a><em>|</em>
            <a href="">意见反馈</a><em>|</em>
            <a href="">关于 12306NG</a><em>|</em>
            <a href="">团队成员</a><em>|</em>
            <a href="">联系我们</a>
        </span>
    </div>
    <!--bottom end-->
</div>
</body>
</html>
