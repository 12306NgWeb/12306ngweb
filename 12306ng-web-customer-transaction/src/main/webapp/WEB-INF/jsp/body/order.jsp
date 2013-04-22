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
    
    <!--all orders start-->
	<div class="myorder">
		<div class="position">我的12306 > 我的订单 > 订单查询</div>
		
		<!--left menus-->
		<div class="orderleft fleft">
			<ul>
				<li>我的订单</li>
				<li class="infosurrent">订单查询</li>
				<li>我的信息</li>
				<li><a href="mycontact.html">常用联系人</a></li>
				<li><a href="myinfos.html">个人资料</a></li>
				<li><a href="mypassword.html">密码修改</a></li>
			</ul>
		</div>
		
		<!--right cons-->
		<div class="orderright fright" id="tabs">
			<div class="ordercons">
				<span class="otitle">订单类型：</span>
				<ul class="tags ordertype">
					<li><a href="">全部订单</a></li>
					<li><a href="">待付款订单</a></li>
					<li><a href="">已付款订单</a></li>
					<li><a href="">已出票订单</a></li>
				</ul>
			</div>
			<div class="ordercons">
				<span class="otitle">查询类型：</span>
				<ul class="ordertypeselect">
					<li><select>
						<option>订单日期查询</option>
					</select></li>
					<li><label>起始日期：</label><select>
						<option>订单日期查询</option>
					</select></li>
					<li><label>结束日期：</label><select>
						<option>订单日期查询</option>
					</select></li>
				</ul>
			</div>
			<div class="ordercons">
				<span class="otitle">单号查询：</span>
				<ul class="ordertypeselect">
					<li><input type="text" class="singleselect"/></li>
					<li><label>车次查询：</label><input type="text" class="singleselect" /></li>
					<li><label>姓名查询：</label><input type="text" class="singleselect" /></li>
					<li><input type="submit" class="btnsinglesearch" /></li>
				</ul>
			</div>
			<div class="panes">
				<!--all orders start-->
				<div>					
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th>订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="red">待付款</span></td>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="red">待付款</span></td>
						</tr>						
					</table>
					<p class="tright mb20"><input type="submit" name="submit" class="btnpay mr10" value="继续支付"/><input type="submit" name="submit" class="btnpaycancel" value="取消订单"/></p>
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th colspan="2">订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="green">已付款</span></td>
							<td>
								<p><a href="returnticket.html" class="blue">[退票]</a></p>
								<p><a href="changeticket.html" class="blue">[改签]</a></p>
							</td>
						</tr>						
					</table>
					<p class="tright mb20"><a href="changeticket.html"><input type="submit" name="submit" class="btnpaychange mr10" value="全部改签"/></a><a href="returnticket.html"><input type="submit" name="submit" class="btnpaychange" value="全部退票"/></a></p>
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th>订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td>已出票</td>
						</tr>
					</table>					
				</div>
				<!--all orders end-->
				
				<!--waiting for the payment start-->
				<div>
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th>订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="red">待付款</span></td>
						</tr>						
					</table>
					<p class="tright mb20"><input type="submit" name="submit" class="btnpay mr10" value="继续支付"/><input type="submit" name="submit" class="btnpaycancel" value="取消订单"/></p>
				</div>
				<!--aiting for the payment end-->
				
				<!--payment have been start-->
				<div>
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th colspan="2">订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="green">待付款</span></td>
							<td>
								<p><a href="returnticket.html" class="blue">[退票]</a></p>
								<p><a href="changeticket.html" class="blue">[改签]</a></p>
							</td>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td><span class="green">待付款</span></td>
							<td>
								<p><a href="" class="blue">[退票]</a></p>
								<p><a href="" class="blue">[改签]</a></p>
							</td>
						</tr>						
					</table>
					<p class="tright mb20"><a href="changeticket.html"><input type="submit" name="submit" class="btnpaychange mr10" value="全部改签"/></a><a href="returnticket.html"><input type="submit" name="submit" class="btnpaychange" value="全部退票"/></a></p>
				</div>
				<!--payment have been end-->
				
				<!--tickets have been start-->
				<div>
					<table border="0" class="ticketout">
						<tr class="tableheader">
							<th colspan="4">订票日期：2013-01-31</th>
							<th>订单编号：123456789123</th>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td>已出票</td>
						</tr>
						<tr>
							<td>2013年01月31日</td>
							<td>
								<p>L1018次 19:31开</p>
								<p>北京西 - 上海东</p>
							</td>
							<td>
								<p>01车厢 77号</p>
								<p>硬座 成人票(86.00元)</p>
							</td>
							<td>
								<p>代用名</p>
								<p>二代身份证</p>
							</td>
							<td>已出票</td>
						</tr>
					</table>
				</div>
				<!--tickets have been end-->
			</div>
			
			<!--warm tips-->
			<div class="tips">
				<p>温馨提示：</p>
				<p>1.在本网站可查询乘车日为当前日期前30天以内的历史订单。</p>
				<p>2.本网站仅办理不晚于开车前2小时尚未换取纸质车票的退票、改签业务。</p>
				<p>3.在本网站办理退票，只能逐次单张办理。</p>
				<p>4.车票只能改签一次，已经改签的车票不能再次改签。</p>
				<p>5.退票、改签成功后可使用订单查询功能确认订单状态，如有疑问请致电12306人工客服查询。</p>
			</div>
		</div>
	</div>
    <!--all orders end-->
    
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
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript">
$(function() {
	$("#tabs").oTabs();
	
	$(".headerlogin").mouseover(function(){
			$("#myshow").show().mouseleave(function(){
					$(this).hide();
				});
		})
});
</script>
</body>
</html>
