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
            <p class="red">以上余票信息随时发生变化，仅作参考</p>
        </fieldset>
		<!--trains information end-->

		<div class="travelcontact changetrin">
			<h2 class="tableheader">改签原票信息</h2>
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
                    <td class="ctsate">硬卧</td>
                    <td class="cttrain">10</td>
                    <td class="ctnum">01号中铺</td>
                    <td class="ctprice">71.50元</td>
                </tr>
            </table>
		</div>

		<!--trains relationship start-->
		<div class="travelcontact">
        	<h2 class="tableheader">乘车人信息</h2>
			<table border="0" class="travelinfo" >
				<tr class="tableheader">
					<th class="iorder">序号</th>
					<th class="isite">席别</th>
					<th class="iticket">票种</th>
					<th class="iname">姓名</th>
					<th class="icard">证件类型</th>
					<th class="icid">证件号码</th>
					<th class="iphone">手机号</th>
					<th class="ido">操作</th>
				</tr>
				<tr>
					<td class="iorder">第一位</td>
					<td class="isite"><select>
						<option>硬座</option>
						<option>软座</option>
						<option>卧铺</option>
					</select></td>
					<td class="iticket"><select>
						<option>成人票</option>
						<option>儿童票</option>
                        <option>学生票</option>
                        <option>残军票</option>
					</select></td>
					<td class="iname"><input type="text" name="username" class="contactname" /></td>
					<td class="icard"><select>
                	<option>二代身份证</option>
                    <option>港澳通行证</option>
                    <option>台湾通行证</option>
                    <option>护照</option>
                </select></td>
					<td class="icid"><input type="text" name="username" class="contactid" /></td>
					<td class="iphone"><input type="text" name="username" class="contactphone" /></td>
					<td class="ido"><a href="" class="blue">[改签]</a></td>
				</tr>			
			</table>
		</div>
		<!--trains relationship start-->
		
		<p class="pt20 tcenter"><input type="submit" name="submit" value="取消改签" class="btnresetticket mr10" /><input type="submit" name="submit" value="重新选择" class="btnresetticket mr10" /><input type="submit" name="submit" value="提交订单" onClick="infoshow()" class="btnaddticket mr15" /></p>
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
    <p class="mt10">尊敬的旅客，本次列车您选择的席别尚有余票<span class="red">89</span>张，无座<span class="red">344</span>张，特此提醒。</p>
	<p class="red mt10">请确认订单信息是否正确，如正确请点击“确认”按钮，系统将为您随机分配席位</p>
	<p class="tcenter mt20"><a href="changeconfirm.html"><input type="submit" name="submit" class="btnsubmit mr20" value="确定" /></a><input type="submit" name="submit" class="btncancel" value="取消" /></p>
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
