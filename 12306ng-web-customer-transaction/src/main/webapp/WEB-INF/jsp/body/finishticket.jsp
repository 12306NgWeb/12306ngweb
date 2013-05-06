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
    
    <!--book ticket success start-->
	<div class="bookorder">
		<div class="bookstep"><img src="../images/step3.png" alt="完成车票预定" width="1000" height="34" /></div>
		<div class="ticketsuccess">
			<img src="../images/blueok.png" alt="true" width="56" height="56" />
			<h1 class="blue">恭喜您，订票成功！<span>订单号<em>E786702311</em></span></h1>
		</div>
		<div class="travelcontact">
			<h2 class="travelinfo">温馨提示</h2>
			<ol class="warmprompt">
				<li>1. 我们已向您注册时提供的邮箱及手机发送订单信息，请稍后查询，您也可以在“我的订单”中查询订单信息。</li>
				<li>2. 请持本订单乘客<span>二代居民身份证</span>原件和订单号尽快到铁路代售点、车站自动售票机或车站售票窗口换取纸质车票后乘车。</li>
				<li>3. 请预留足够的换票时间，以免窗口排队人数较多，耽误您检票乘车。</li>
			</ol>
		</div>
        <div class="travelcontact">
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
        </div>
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
		
		<p class="pt20 tcenter"><a href="bookticket.html"><input type="submit" name="submit" value="继续购票" class="btnresetticket mr15" /></a><input type="submit" name="submit" value="打印订单" class="btnresetticket" /></p>
	</div>
    <!--book ticket success end-->
    
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
<script>
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
