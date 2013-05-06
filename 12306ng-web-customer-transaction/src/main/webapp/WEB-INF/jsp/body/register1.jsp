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
    
    <!--user information for register start-->
    <fieldset class="userinfors baseinfos">
        <legend>基本信息：</legend>
        <ul>
            <li><label><em>*</em>用户名：</label><input type="text" name="userName" class="inputname" />
            <p>用户名由字母、数字或“_”组成，长度不少于6位，不多于30位</p></li>    			
            <li><label><em>*</em>密码：</label><input type="text" name="userName" class="inputname" />
            <p>密码不得少于6位字符</p></li>
            <li><label><em>*</em>确认密码：</label><input type="text" name="userName" class="inputname" />
            <p>请再次输入密码</p></li>
            <li><label><em>*</em>验证码：</label><input type="text" name="userName" class="inputname" /><img src="" />
            <p>看不清，<a class="blue" href="">换一张</a></p></li>
        </ul>
    </fieldset>
    <fieldset class="userinfors detailinfos">
        <legend>详细信息：</legend>
        <ul>
            <li><label><em>*</em>姓名：</label><input type="text" name="userName" class="inputname" />
            <p>请输入与身份证一致的姓名，生僻字请用小写拼音，如：“李森”可输入“李shen”</p></li>				
            <li><label><em>*</em>性别：</label><input type="radio" name="usersex" /><label style="width:20px; margin-right:20px;">男</label><input type="radio" name="usersex" /><label style="width:20px;">女</label></li>
            <li><label><em>*</em>国家/地区：</label><input type="text" name="userName" class="inputname" />
            <p>请选择所属的国家</p></li>
            <li><label><em>*</em>证件类型：</label><input type="text" name="userName" class="inputname" />
            <p>请选择证件类别</p></li>
            <li><label><em>*</em>证件号码：</label><input type="text" name="userName" class="inputname" />
            <p>请填写您的证件号码</p></li>
            <li><label><em>*</em>手机号码：</label><input type="text" name="userName" class="inputname" />
            <p>请正确填写手机号，以便正常接收铁路客户服务信息</p></li>
            <li><label><em>*</em>电子邮箱：</label><input type="text" name="userName" class="inputname" />
            <p>请正确填电子邮箱地址，以便正常接收铁路客户服务信息</p></li>
            <li><label><em>*</em>旅客类型：</label><input type="text" name="userName" class="inputname" />
            </li>
        </ul>
    </fieldset>
    <p class="tcenter"><a href="registersuccess.html"><input type="submit" name="goregister" class="goreg" value="提交注册信息" /></a></p>
    
    <!--user information for register end-->
    
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
