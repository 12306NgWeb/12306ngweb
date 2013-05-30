<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/include.jsp"%>
<!-- <!doctype html>
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
    header start
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
    </div> -->
    <!--header end-->
    
    <!--user information for register start-->
	<div class="bookorder">
		<div class="bookstep"><img src="<c:url value='/images/step1.png'/>" alt="填写订单信息" width="1000" height="34" /></div>
		<!--trains information start-->
		<fieldset class="userinfors traininfos">
        	<legend>列车信息</legend>
			<span class="trainorder fleft">T1234</span>
			<p>
				<span class="gray">类别：</span>
				<span class="mr5">特快旅客列车</span><em>|</em>
				<span class="gray">始发：</span>
				<span class="mr5"><c:out value ="${ticket.beginStation}"/></span><em>|</em>
				<span class="gray">终点：</span>
				<span class="mr5"><c:out value ="${ticket.arriveStation}"/></span><em>|</em>
				<span class="gray">全程：</span>
				<span><c:out value ="${ticket.costTime}"/></span>
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
		<!--trains information end>

		<!--trains information detail start-->
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
                    <td class="tdo"><a href="changeticket.html" class="blue">[更改车次]</a></td>
                </tr>
                <tr>
                    <td class="torder">T1234</td>
                    <td class="tdate">2013年3月3日</td>
                    <td class="tstartadd">北京西（8：00开）</td>
                    <td class="tendadd">上海虹桥（12：55到）</td>
                    <td class="ttime">4小时55分</td>
                    <td class="tdo"><a href="changeticket.html" class="blue">[更改车次]</a></td>
                </tr>
            </table>
        </div>
		<!--trains information detail end-->

		<!--trains relationship start-->
		<div class="travelcontact">
			<h2 class="tableheader">常用联系人</h2>
			<p class="contactcheck">
				<span><input type="checkbox" name="checkuser" /><label>Jane</label></span>
			</p>
		</div>
		<!--trains relationship end>

		<!--trains relationship start-->
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
					<th class="iuse"><input type="checkbox" /><label>保存到常用联系人</label></th>
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
					<td class="iuse"><input type="checkbox" /><label>保存到常用联系人</label></td>
					<td class="ido"><a href="" class="blue">[删除]</a></td>
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
					<td class="iuse"><input type="checkbox" /><label>保存到常用联系人</label></td>
					<td class="ido"><a href="" class="blue">[删除]</a></td>
				</tr>			
			</table>
			<p class="tcenter mt10"><a href="addcontact.html"><input type="submit" name="adduser" class="btnadduser" value="新增"/></a></p>
			<div class="describinfos">
				<p>1. 一张有效身份证件同一乘车日期同一车次只能购买一张车票。</p>
				<p>2. 购票时可使用的有效身份证件包括：中华人民共和国居民身份证、港澳居民来往内地通行证、台湾居民来往大陆通行证和按规定可使用的有效护照。 </p>
				<p>3. 购买儿童票时，乘车儿童有有效身份证件的，请填写本人有效身份证件信息。乘车儿童没有有效身份证件的，应使用同行成年人的有效身份证件信息；购票时不受前条限制，但购票
	后、开车前须办理换票手续方可进站乘车。 </p>
				<p>4. 购买学生票时，须在我的常用联系人中登记乘车人的学生详细信息。学生票乘车时间限为每年的暑假6月1日至9月30日、寒假12月1日至3月31日。购票后、开车前，须办理换票手续
	方可进站乘车。换票时，新生凭录取通知书，毕业生凭学校书面证明，其他凭学生优惠卡。</p>
				<p>5. 购买残疾军人（伤残警察）优待票的，须在购票后、开车前办理换票手续方可进站乘车。换票时，不符合规定的减价优待条件，没有有效"中华人民共和国残疾军人证"或"中华人民共
	和国伤残人民警察证"的，不予换票，所购车票按规定办理退票手续。 </p>
			</div>
		</div>
		<!--trains relationship start-->

		<!--trains order start-->
		<div class="tickettotle">
			<p class="tright">预购票数：<strong>4</strong> 张   总票价：<strong class="orange">412.00 元</strong></p>
		</div>
		
		<p class="pt20 tcenter"><input type="submit" name="submit" value="提交" onClick="infoshow()" class="btnaddticket mr15" /><input type="submit" name="submit" value="清空" class="btnresetticket" /></p>
		<!--trains order start-->
	</div>
    <!--user information for register end-->
    
    <!--bottom start-->
    <!-- <div class="bottom">
        <img src="../images/bottomlogo.png" alt="12306ng-Logo" width="110" height="40" />
        <span>
            <a href="">新手上路</a><em>|</em>
            <a href="">常见问题</a><em>|</em>
            <a href="">意见反馈</a><em>|</em>
            <a href="">关于 12306NG</a><em>|</em>
            <a href="">团队成员</a><em>|</em>
            <a href="">联系我们</a>
        </span>
    </div> -->
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
<!-- </body>
</html> -->
