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
		<!--trains information start-->
		<fieldset class="userinfors traininfos">
        	<legend>确认改签</legend>
            <p>温馨提示：</p>
            <p>1，席位已成功锁定，改签交易尚未完成。请点击“确认改签”，否则系统将自动取消本次交易。</p>
            <p>2，当页面提示“恭喜您已改签成功”请牢记订单号“XXXXXXXXXX”时表示车票改签成功！</p>
            <p>确认改签剩余时间：<span class="red">44分56秒</span></p>
        </fieldset>
		<!--trains information end-->

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
            <p>1. 改签后新票价高于原票价的，请支付全额全额新票票款，原票票款按银行规定时限退回原银行卡。</p>
            <p>1. 改签后新票价低于原票价的，票价差额按银行规定时限退回原银行卡。</p>
        </div>
		
		<p class="pt20 tcenter"><input type="submit" name="submit" value="重新购票" class="btnresetticket mr10" /><input type="submit" name="submit" value="取消改签" class="btnresetticket mr10" /><a href="changesuccess.html"><input type="submit" name="submit" value="确认改签" onClick="infoshow()" class="btnaddticket mr15" /></a></p>
		<!--trains order start-->
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
<!---->
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
