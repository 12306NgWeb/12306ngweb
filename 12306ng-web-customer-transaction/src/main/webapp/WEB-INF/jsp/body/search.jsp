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
            <a href="">退票</a>
            <a href="help.html">帮助</a>
            <a href="feedback.html">反馈</a>
        </span>
        <span class="headerlogin fright"><a href="register.html">注册</a><a href="login.html">登录</a></span>
    </div>
    header end -->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    <!--search start-->
	<div class="ticketsearch">
    	<div class="searchdates">
            <input type="text" placeholder="出发地" name="startAdd" class="inputtxt" />
            <input type="text" placeholder="目的地" name="endAdd" class="inputtxt" />
            <input type="text" placeholder="出发日期" name="startDate" class="inputdate" />
            <input type="submit" value="查询" name="search" class="btnsearch f16" />
        </div> 
        <div class="searchdates">
            <ul>
            	<li><select>
                    <option>T1234（重庆北-北京西）</option>
                </select></li>
            	<li><input type="radio" name="traintypes" class="radiotype" checked="checked"/><label>全部</label></li>
                <li><input type="radio" name="traintypes" class="radiotype" /><label>始发</label></li>
                <li><input type="radio" name="traintypes" class="radiotype" /><label>终到</label></li>
                <li><input type="radio" name="traintypes" class="radiotype" /><label>始发终到</label></li>
                <li><input type="radio" name="traintypes" class="radiotype" /><label>过路</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" checked="checked"/><label>全部</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>高铁</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>动车</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>直达</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>特快</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>快速</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>普快</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>普客</label></li>
                <li><input type="checkbox" name="traintypes" class="checkboxtype" /><label>临客</label></li>
            </ul>
        </div> 
        <table cellpadding="0" cellspacing="0" border="1" class="alltrains">
            <tr>
                <th rowspan="2" width="3%">序号</th>
                <th rowspan="2" width="17%">车次</th>
                <th colspan="2" class="tcenter">查询区间</th>
                <th colspan="3" class="tcenter">区间运行时刻</th>
                <th colspan="10" class="tcenter">余票信息</th>
                <th class="startstation">列车信息</th>
            </tr>
            <tr class="traindetail">
                <th class="orderstation">发站</th>
                <th class="orderstation">到站</th>
                <th class="startstation">发时</th>
                <th class="startstation">到时</th>
                <th class="startstation">历时</th>
                <th class="orderstation">商务座</th>
                <th class="orderstation">特等座</th>
                <th class="orderstation">一等座</th>
                <th class="orderstation">二等座</th>
                <th class="orderstation">高级软卧</th>
                <th class="orderstation">软卧</th>
                <th class="orderstation">硬卧</th>
                <th class="orderstation">软座</th>
                <th class="orderstation">硬座</th>
                <th class="orderstation">无座</th>
                <th class="orderstation">等级</th>
            </tr>
    <c:forEach items="${ticketlist}" var="ticket">        
            <tr>
            	<td>${ticket.id}</td>
                <td>${ticket.ticketInfo}</td>
                <td>${ticket.beginStation}</td>
                <td>${ticket.arriveStation}</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
           </c:forEach> 
            <!-- <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr>
            <tr>
            	<td>1</td>
                <td>G7428(杭州→上海虹桥)</td>
                <td>杭州</td>
                <td>上海</td>
                <td>17：29</td>
                <td>18：39</td>
                <td>50：00</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>有</td>
                <td>快速</td>
            </tr> -->
        </table>
        <p class="red pt20">*余票每十分钟更新一次，“-”表示无此席别，“0”表示已售完</p>
        <p class="red pt5" >*鼠标移到任何信息，即可放大现实</p>
    </div>
    <!--search end-->
    
    <!--bottom start-->
<!--     <div class="bottom">
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
	  $("#txtemail").focus();
	  $("#bgcolor").show();
  }
  function infoIndden() {
	  $("#submitconfirm").fadeOut();
	  $("#bgcolor").hide();
  }
  $('#check_signed').customInput();
</script>
<!-- </body>
</html> -->
