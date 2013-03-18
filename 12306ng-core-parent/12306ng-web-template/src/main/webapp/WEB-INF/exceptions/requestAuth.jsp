<%@page import="com.hp.it.isaport.common.utils.GroupUtils"%> 
<%@page import="com.hp.it.isaport.authentication.AuthenticationFilter"%> 
<%@page import="com.hp.it.isaport.authentication.UserProfile"%> 
<% 
	java.util.List<String> groups = GroupUtils.getGroups();
	
	UserProfile userProfile = (UserProfile)session.getAttribute(AuthenticationFilter.USER_PROFILE_ATTR); 
	String[] userGroups = userProfile.getGroups();
	java.util.Map map = new java.util.HashMap<String,String>();
	if(userGroups != null && userGroups.length != 0 ){
		for(String group : userGroups){
		
			map.put(group,group);
		}
	}	
%>
<H2>Request Access</H2>
<form id="applyPermission" action="/authorization/secure/authForm/submit" method="post">
<div id="body-div">
		<Label>Groups you can apply:</Label><span style="float:right"><a href="/authorization/secure/myAuth">See my pending requests</a></span>
		<div style="margin:5px 10px;">Note: You can not select the groups you are already a member of.</div>
		<div class="results">
			<table id="group_table" style="100%">
				<thead>
				<tr style="height:50px;">
					<th style="width:5%;"><input id="selectAll" type="checkbox" value="sa" style="height:18px;width:18px"/></th>
					<th style="width:30%;">Group</th>
					<th style="width:55%;">Description</th>
				</tr>
				</thead>
				<% for(String groupName : groups) {
					String groupDesc = GroupUtils.getGroupDescription(groupName);%>
				
					<% if(map.containsKey(groupName)) {
						%>
					<tr>
					<td></td>
					<% } else{ %>
					<td><input type="checkbox" style="height:18px;width:18px" name="groups" value="<%=groupName %>" /></td>
					<% } %>
					<td><%=groupName %></td>
					<td><%=groupDesc%></td>
				
				</tr>
				<% } %>	
								
		</table>
	</div>
	<div style="width: 70%;margin-top: 20px;">
		<Label>Why you need access:</Label>
		<br/><br/>
		<textarea id="reason" name="reason" style="border: 1px solid #A3A3A3; border-radius: 7px; height: 100px; width: 400px"></textarea>
	</div>
	<div  style="background: #A3A3A3;margin-top: 20px;padding:5px;">Note: When you submit this request, email will be sent to your direct manager. When your manager approves or rejects this request, you will receive notification via email. If your manager does not take any action withing 48 hours, this request will get deleted and you need to submit a new request. 
	</div>
	<div  style="margin-top: 20px;">
		<input id="btnSubmit" type="submit" value="Submit" style="width:80px;height:30px;">
	</div>
</div>
</form>

<script>
	$(document).ready(function() {	
		$("#group_table").dataTable({
			//"bJQueryUI" : true,
			'bFilter': false,
			"bInfo": false,
			"bPaginate": false
		}); 
	});
	$("#btnSubmit").button();

	$("#selectAll").click(function() {
		if ($(this).attr("checked") == "checked") {
			$("input[name='groups']").each(function() {
				if($(this).attr("disabled") !="disabled"){
				
					if ($(this).attr("checked") != "checked"){
					
						$(this).attr("checked", true);}
				}
			});
		} else {
			$("input[name='groups']").each(function() {
				if ($(this).attr("checked") == "checked")
					$(this).attr("checked", false);
			});
		}
	});

	$("input[name='groups']").click(function() {
		var flag = true;
		$("input[name='groups']").each(function() {
			if ($(this).attr("checked") != "checked") {
				flag = false;
			}
			if (flag == true) {
				$("#selectAll").attr("checked", true);
			} else {
				$("#selectAll").attr("checked", false);
			}
		});
	});

</script>
