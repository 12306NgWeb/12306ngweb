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
		<div class="position">我的12306 > 我的订单 > 订单查询</div>
		<div class="orderleft fleft">
			<ul>
				<li>我的订单</li>
				<li><a href="order.html">订单查询</a></li>
				<li>我的信息</li>
				<li class="infosurrent"><a href="mycontact.html">常用联系人</a></li>
				<li><a href="myinfos.html">个人资料</a></li>
				<li><a href="mypassword.html">密码修改</a></li>
			</ul>
		</div>
		<div class="orderright fright">
			<div class="ordercontact">
				<div class="contactsearch">
					<input type="text" class="inputsearch mr10" />
					<input type="submit" name="add" class="btnadd mr10" value="查询" />
					<input type="submit" name="delete" class="btndelete" value="重置" />					
					<input type="submit" name="delete" class="btndelete mr10 fright" value="删除" />
					<a href="addcontact.html"><input type="submit" name="add" class="btnadd mr10 fright" value="添加" /></a>
				</div>
				<table border="0" class="contactinfos">
					<tr class="tableheader">
						<th class="cname">姓名</th>
						<th class="csex">性别</th>
						<th class="ccard">证件类型</th>
						<th class="cid">证件号码</th>
						<th class="cphone">手机/电话</th>
						<th class="ctraveler">旅客类型</th>
						<th class="cdo">操作</th>
					</tr>
					<tr>
						<td class="cname">张三</td>
						<td class="csex">男</td>
						<td class="ccard">身份证</td>
						<td class="cid">400000000000000000</td>
						<td class="cphone">15888888888</td>
						<td class="ctraveler">成人</td>
						<td class="cdo"><a href="" class="blue">[编辑]</a></td>
					</tr>
					<tr>
						<td class="cname">张三</td>
						<td class="csex">男</td>
						<td class="ccard">身份证</td>
						<td class="cid">400000000000000000</td>
						<td class="cphone">15888888888</td>
						<td class="ctraveler">成人</td>
						<td class="cdo"><a href="" class="blue">[编辑]</a></td>
					</tr>
					<tr>
						<td class="cname">张三</td>
						<td class="csex">男</td>
						<td class="ccard">身份证</td>
						<td class="cid">400000000000000000</td>
						<td class="cphone">15888888888</td>
						<td class="ctraveler">成人</td>
						<td class="cdo"><a href="" class="blue">[编辑]</a></td>
					</tr>
				</table>
				<p class="pt20 tcenter"><a href="addcontact.html"><input type="submit" name="add" class="btnadd mr20" value="添加" /></a><input type="submit" name="delete" class="btndelete mr20" value="删除" /></p>
			</div>
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
