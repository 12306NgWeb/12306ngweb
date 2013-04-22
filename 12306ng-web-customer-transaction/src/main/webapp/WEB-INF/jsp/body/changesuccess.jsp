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
			<h1 class="blue">恭喜您已改签成功！<span>订单号<em>E786702311</em></span></h1>
		</div>
		<div class="travelcontact">
			<ol class="warmprompt">
				<li>1. 本网站将在“我的12306”中显示订单信息，并向您注册时提供的邮箱和手机发送订单信息，请稍后查询。</li>
				<li>2. Jane女士/先生请持<span>二代居民身份证</span>原件和订单号尽快到铁路代售点、车站自动售票机或车站售票窗口换取纸质车票。</li>
			</ol>
		</div>
        <div class="travelcontact changetrin">
			<h2 class="tableheader">订单信息</h2>
			<table border="0" class="travelinfo">
                <tr class="tableheader">
                    <th class="ctname">姓名</th>
                    <th class="ctcard">证件类型</th>
                    <th class="ctID">证件号</th>
                    <th class="ctdate">出发日期</th>
                    <th class="ctadds">出发地</th>
                    <th class="ctadde">目的地</th>
                    <th class="cttype">票种</th>
                    <th class="ctorder">车次</th>
                    <th class="ctsate">席别</th>
                    <th class="cttrain">车厢</th>
                    <th class="ctnum">座位号</th>
                    <th class="ctprice">票价</th>
                </tr>
                <tr>
                    <td class="ctname">Jane</td>
                    <td class="ctcard">二代身份证</td>
                    <td class="ctID">400000000000000000</td>
                    <td class="ctdate">2012-03-13</td>
                    <td class="ctadds">北京<br/>（23：30开）</td>
                    <td class="ctadde">天津<br/>（01：15到）</td>
                    <td class="cttype">成人票</td>
                    <td class="ctorder">4411</td>
                    <td class="ctsate">硬座</td>
                    <td class="cttrain">09</td>
                    <td class="ctnum">068号</td>
                    <td class="ctprice">20.50元</td>
                </tr>
            </table>
		</div>		
		
        <div class="tickettotle">
			<p class="tright mr10 red fB">退还票款差价：<strong class="ml5">51.00 元</strong></p>
		</div>
        
        <div class="describinfos">
            <p><span class="orange">温馨提示：</span>如您拟于乘车前到车站售票窗口换票，请预留足够的换票时间，以免窗口排队人数较多，耽误您检票乘车。</p>
        </div>
		
		<p class="pt20 tcenter"><a href="bookticket.html"><input type="submit" name="submit" value="继续购票" class="btnresetticket mr15" /></a><a href="order.html"><input type="submit" name="submit" value="查询订单" class="btnresetticket mr15" /></a><input type="submit" name="submit" value="打印订单" class="btnresetticket" /></p>
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
