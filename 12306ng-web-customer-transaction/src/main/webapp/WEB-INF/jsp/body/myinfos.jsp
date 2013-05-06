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
        <span class="headerlogin fright"><a href="">我的12306</a></span>
        <div id="myshow" style="display: none;">
        	<ul>
            	<li><a href="bookticket.html">车票预定</a></li>
                <li><a href="order.html">我的订单</a></li>
                <li><a href="myinfos.html">个人信息</a></li>
                <li><a href="index.html">登出</a></li>
            </ul>
        </div>
    </div>
    <!--header end-->
    
    <!--user information start-->
	<div class="myorder">
		<div class="position">我的12306 > 我的信息 > 个人资料</div>
		<div class="orderleft fleft">
			<ul>
				<li>我的订单</li>
				<li><a href="order.html">订单查询</a></li>
				<li>我的信息</li>
				<li><a href="mycontact.html">常用联系人</a></li>
				<li class="infosurrent"><a href="myinfos.html">个人资料</a></li>
				<li><a href="mypassword.html">密码修改</a></li>
			</ul>
		</div>
		<div class="orderright fright myinfos">
			<h2>基本信息</h2>
			<ul>
				<li><label>用户名：</label>Jane</li>
				<li><label>密码提示问题：</label>What's your name?</li>
			</ul>
			<h2>详细信息</h2>
			<ul>
				<li><label>姓名：</label>Jane</li>
				<li><label>性别：</label>女</li>
				<li><label>出生日期：</label>2013-03-03</li>
				<li><label>国家或地区：</label>中国</li>
				<li><label>证件类型：</label>身份证</li>
				<li><label>证件号码：</label>400000000000000000</li>
			</ul>
			<h2>联系方式</h2>
			<ul>
				<li><label>手机号：</label>15888888888</li>
				<li><label>固定电话：</label>010-88888888</li>
				<li><label>电子邮件：</label>admin@admin.com</li>
				<li><label>地址：</label>北京市海淀区中关村东路1号清华科技园科技大厦A座XXX</li>
				<li><label>邮编：</label>100084</li>
			</ul>
			<h2>附加信息</h2>
			<ul>
				<li><label>旅客类型：</label>成人</li>
			</ul>
			<p class="pt10 tcenter"><a href="modifymyinfos.html"><input type="submit" name="add" class="btnadd mr10" value="修改" /></a></p>
		</div>
	</div>
    <!--user information end-->
    
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
<script type="text/javascript">
$(function() {
	$(".headerlogin").mouseover(function(){
			$("#myshow").show().mouseleave(function(){
					$(this).hide();
				});
		})
});
</script>
</body>
</html>
