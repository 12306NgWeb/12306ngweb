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
    
    <!--user information for register start-->
	<div class="bookorder">
		<div class="bookstep"><img src="../images/step2.png" alt="确认订单信息" width="1000" height="34" /></div>
		<fieldset class="userinfors traininfos">
        	<legend>列车信息</legend>
			<span class="trainorder fleft">T1234</span>
			<p>
				<span class="gray">类别：</span>
				<span class="mr5">特快旅客列车</span><em>|</em>
				<span class="gray">始发：</span>
				<span class="mr5">北京南</span><em>|</em>
				<span class="gray">终点：</span>
				<span class="mr5">上海虹桥</span><em>|</em>
				<span class="gray">全程：</span>
				<span>4小时55分</span>
			</p>
			<p>
				<span>硬卧(103.00元)</span>
				<span class="mr5 red">无票</span><em>|</em>
				<span>软座(85.00元)</span>
				<span class="mr5 green">有票</span><em>|</em>
				<span>硬座(48.00元)</span>
				<span class="mr5 green">有票</span><em>|</em>
				<span>软卧(169.00元)</span>
				<span class="mr5 red">无票</span><em>|</em>
				<span>无座(48.00元)</span>
				<span class="green">有票</span>
			</p>
        </fieldset>
		<div class="travelcontact ordersuccess">
			<span class="fleft">席位已成功锁定，请于<em>45分钟</em>内完成支付，否则系统将自动取消本订单</span>
			<span class="fright pr10">剩余支付时间：44分59秒</span>
		</div>
		<table border="0" class="travelinfo">
			<tr class="tableheader">
				<th class="torder">车次</th>
				<th class="tdate">出发时间</th>
				<th class="tstartadd">出发站</th>
				<th class="tendadd">目的地</th>
				<th class="ttime">历时</th>
				<th class="tdo"></th>
			</tr>
			<tr>
				<td class="torder">T1234</td>
				<td class="tdate">2013年3月3日</td>
				<td class="tstartadd">北京西（8：00开）</td>
				<td class="tendadd">上海虹桥（12：55到）</td>
				<td class="ttime">4小时55分</td>
				<td class="tdo"></td>
			</tr>
		</table>
		<div class="travelcontact">
			<table border="0" class="travelinfo" >
				<tr class="tableheader">
					<th class="iorder">序号</th>
					<th class="isite">席别</th>
					<th class="iticket">票种</th>
					<th class="iname">姓名</th>
					<th class="icard">证件类型</th>
					<th class="icid">证件号码</th>
					<th class="iphone">手机号</th>
					<th class="iorder">车厢</th>
					<th class="iorder">席位</th>
					<th class="iorder">票价</th>
				</tr>
				<tr>
					<td class="iorder">第一位</td>
					<td class="isite">硬座</td>
					<td class="iticket">成人票</td>
					<td class="iname">Jane</td>
					<td class="icard">二代身份证</td>
					<td class="icid">400000000000000000</td>
					<td class="iphone">15888888888</td>
					<td class="iorder">01</td>
					<td class="iorder">077号</td>
					<td class="iorder">103.00元</td>
				</tr>
				<tr>
					<td class="iorder">第一位</td>
					<td class="isite">硬座</td>
					<td class="iticket">成人票</td>
					<td class="iname">Jane</td>
					<td class="icard">二代身份证</td>
					<td class="icid">400000000000000000</td>
					<td class="iphone">15888888888</td>
					<td class="iorder">01</td>
					<td class="iorder">077号</td>
					<td class="iorder">103.00元</td>
				</tr>			
			</table>
		</div>		
		<div class="tickettotle">
			<p class="tright">预购票数：<strong>4</strong> 张   总票价：<strong class="orange">412.00 元</strong></p>
		</div>
		
		<p class="pt20 tcenter"><input type="submit" name="submit" value="在线支付" onClick="infoshow()" class="btnaddticket mr15" /><input type="submit" name="submit" value="取消订单" class="btnresetticket" /></p>
	</div>
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
<!--cinfirm ticket information-->
<div class="bgcolor" id="bgcolor"></div>
<div class="submitconfirm" id="submitconfirm">  
	<h1 class="blue"><span class="user_close" onClick="infoIndden()"></span> 在线支付提示</h1>
	<p class="pt20 tcenter"><img src="../images/blueok.png" alt="header-logo" width="56" height="56" /></p>
	<p class="pt20 tcenter">支付完成前，请勿关闭此提示窗口</p>
	<p class="pt20 tcenter">支付完成后，按照您的世纪支付情况点击下面按钮</p>
	<p class="tcenter mt20"><a href="finishticket.html"><input type="submit" name="submit" class="btnsubmit mr20" value="支付完成" /></a><input type="submit" name="submit" class="btncancel" value="支付遇见问题" /></p>
</div>
<!---->
<script>
function infoshow() {
  $("#submitconfirm").fadeIn();
  $("#bgcolor").show();
}
function infoIndden() {
  $("#submitconfirm").fadeOut();
  $("#bgcolor").hide();
}

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
