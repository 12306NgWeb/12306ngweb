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
        	<legend>确认退票</legend>
            <p>温馨提示</p>
            <ol>
            	<li>1，请确认身份信息和车票信息后，点击“确认退票”按钮，继续退票操作。</li>
                <li>2，退票按每张票面额的5%核收退票费（四舍五入到元，最低按2元计收），应退票款按照银行规定时限还至购票时所使用的银行卡，请注意查收。</li>
                <li>3，如您需要退票的报销凭据，请凭购票所使用的乘车人有效身份证原件和订单号码在办理退票之日起10日到车站退票窗口索取。</li>
                <li>4，退票成功后，将向您注册时提供的邮箱和手机发送退票信息，请稍后查询。</li>
            </ol>
        </fieldset>
		<!--trains information end>

		<!--trains relationship start-->
		<div class="travelcontact">
			<h2 class="tableheader">身份信息</h2>
            <div class="returnticket">
                <p><label>姓名：</label>张三</p>
                <p><label>证件类型：</label>二代身份证</p>
                <p><label>证件号码：</label>40000000000000</p>
                <p><label>票种：</label>成人票</p>
			</div>
        </div>
		<!--trains relationship end>

		<!--trains relationship start-->
		<div class="travelcontact">
			<h2 class="tableheader">车票信息</h2>
            <div class="returnticket">
                <p><label>出发日期：</label>2013-03-01</p>
                <p><label>车次：</label>4411</p>
                <p><label>发到站：</label>北京--天津西</p>
                <p><label>席别：</label>硬座</p>
                <p><label>票价：</label>20.50元</p>
			</div>
		</div>
		<!--trains relationship end>

		<!--trains order start-->
		<div class="tickettotle">
			<p class="red">退款信息<span class="ml10">退票费：2.00元</span><span class="ml20">应退票款：18.50元</span><span class="ml5">（请点击“确认退票”按钮，完成退票操作。）</span></p>
		</div>
		
		<p class="pt20 tcenter"><a href="returnticketsuccess.html"><input type="submit" name="submit" value="确认退票"  class="btnaddticket mr15" /></a><input type="submit" name="submit" value="取消" class="btnresetticket" /></p>
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

<!--cinfirm ticket information-->
<div class="bgcolor" id="bgcolor"></div>
<div class="submitconfirm" id="submitconfirm">  
	<h1 class="blue"><span class="user_close" onClick="infoIndden()"></span>提交确认</h1>
	<p class="pt20 gray">车次信息</p>
	<p class="trainconfirm"><span>2013年1月29日</span><span>T1234次</span><span>北京南（8：00开）</span><span>上海虹桥（12：55到）</span></p>
    <ul>
		<li>乘客信息<li>
        <li>
			<span>第1位</span>
			<span>硬座</span>
			<span>成人票</span>
			<span class="black">Jane</span>
			<span>二代身份证</span>
			<span class="black">400000000000000000</span>
			<span>15888888888</span>
		</li>
    </ul>
	<p class="red mt10">请确认订单信息是否正确，如正确请点击“确认”按钮，系统将为您随机分配席位</p>
	<p class="tcenter mt20"><a href="confirmticket.html"><input type="submit" name="submit" class="btnsubmit mr20" /></a><input type="submit" name="submit" class="btncancel" /></p>
</div>
<!---->
</body>
</html>
