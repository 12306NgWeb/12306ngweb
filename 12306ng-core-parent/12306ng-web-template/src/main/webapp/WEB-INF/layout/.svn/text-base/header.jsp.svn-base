<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/web-resources/isaport" scope="page" />
<script type="text/javascript">
$(document).ready(function () {
    $("ul.dropdown li").hover(function(){
        
        $(this).addClass("hover");
        $('ul:first',this).css('visibility', 'visible');
    
    }, function(){
    
        $(this).removeClass("hover");
        $('ul:first',this).css('visibility', 'hidden');
    
    });
    
    $("ul.dropdown li ul li:has(ul)").find("a:first").append(" &raquo; ");  
});
</script>
<div id="sitebanner">

		<div id="site-athp">
			<div class="button_links">
					<a href="http://athp.hp.com/">@hp home</a>
					<a href="http://athp.hp.com/portal/site/athp/menuitem.0dfd84041fd0540a0da96c32238f82f0/">Job tools & services</a>
					<a href="http://athp.hp.com/portal/site/athp/menuitem.8db226267ca6ee9a0da96c32238f82f0/">Careers, policies & total rewards</a>
					<a href="http://athp.hp.com/portal/site/athp/menuitem.0f61045382dc0d55461f32b5548b81f0/">Organizations & locations</a>
					<a href="http://athp.hp.com/portal/site/bprf/">Business performance</a>
					<a href="http://athp.hp.com/portal/site/athp/menuitem.be290989422bdb6192123920038f82f0/">Indexes</a>
					<a href="http://intranet.hp.com/Sites/atHP_help/Pages/at_hp_help_homepage.aspx">Help</a>
					
					<span style="float: right;padding-right: 10px">${loginUserProfile.username}</span>
			</div>
			<div id="search_area">
				<table>
					<form id="myForm" onsubmit="this.query.value" action="https://search.portal.hp.com/search/simple.aspx" name="myForm"></form>
					<tbody>
						<tr>
							<td >
								<input id="pf_searchval" class="searchText_firefox ui-autocomplete-input" type="text" onkeypress="return _HPEPKeycode_Mozilla(event.which)" onclick="if(this.value == "People Finder") { this.value = ""; }" name="pf_searchval" title="Search for people" alt="Search text box" value="People Finder" autocomplete="off" maxlength="255" role="textbox" aria-autocomplete="list" aria-haspopup="true"/>
							</td>
							<td>
								<input width="18" type="image" height="18" title="Search for people" alt="Search" src="${url}/images/search-small.gif"/>							
							</td>
							<td >
								<input class="searchText_firefox" type="text" onclick="if(this.value == "Search") { this.value = ""; }" name="query" alt="Search text box" title="Search for information" value="Search" autocomplete="on" maxlength="255"/>
							</td>
							<td>
								<input width="18" type="image" height="18" align="middle" alt="Search" title="Search for information" value=">>" src="${url}/images/search-small.gif"/>
								<input type="hidden" value="" name="sid"/>						
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<div id="site-title">
			<div class="site-name">
				<H1 class="bu-name">
					<a href="/home/secure/home.htm">Support Automation</a>
				</h1>
			</div>
			<div class="hp-logo">
			<H1 class="bu-logo">
				<a title="HP" href="http://www.hp.com/">
					<img class="hp-logo" alt="HP logo" title="HP" src="${url}/images/HP_Blue_RGB_150_70px.png">
				</a>
			</H1>
			</div>
		</div>
	<div id="top-nav">
		<ul class="dropdown">
		<li class="level1"><a href="/home/secure/home.htm">Home</a></li>
	     <li class="level1"><a href="#" >Isaport<img id="topNavArrow" src="${url}/images/top-nav-carrot.png"></img></a>
		      <ul class="sub_menu">
				<li ><a href="/customerdevice/secure/customerSearch/form" >Customers</a></li>
				<li ><a href="/customerdevice/secure/deviceSearch/form" >Devices</a></li>
				<li ><a href="/customerdevice/secure/contactSearch/form" >Contacts</a></li>
				<li ><a href="/customerdevice/secure/dataPackageSearch/form" >Data Packages</a></li>
				<li ><a href="/deviceware/secure/referenceDataHome.htm" >Reference Data</a></li>
				<li ><a href="/sitemetrics/secure/home" >Site Metrics</a></li>
		      </ul>
	     </li>
	     <li class="level1"><a href="#" >Authorization<img id="topNavArrow" src="${url}/images/top-nav-carrot.png"></img></a>
		      <ul class="sub_menu">
				<li ><a href="/authorization/secure/authForm" >Request Access</a></li>
				<li ><a href="/authorization/secure/myAuth" >My Access Requests</a></li>
				<li ><a href="/authorization/secure/myApprovals" >My Access Approvals (Managers)</a></li>
		      </ul>
	     </li>
	     </ul>
	</div>
</div>