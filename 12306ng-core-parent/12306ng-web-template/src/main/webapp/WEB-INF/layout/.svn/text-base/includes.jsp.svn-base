<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	 window.appContext = "<%=request.getContextPath()%>";
</script>
<c:set var="url" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/web-resources/isaport" scope="page" />
	
	
	<script src="${url}/jquery/js/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="${url}/jquery/js/jquery.cookie.js" type="text/javascript"></script>
	<script src="${url}/jquery/js/jquery-ui.hpCustom.min.js" type="text/javascript"></script>
	<script src="${url}/jquery/js/jquery.dataTables.hpCustom.min.js" type="text/javascript"></script>
	<script src="${url}/jquery/js/jquery.form.js" type="text/javascript"></script>
	<script src="${url}/jquery/js/jquery.loadmask.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	
	<%
		String	disableCache = "false";
		
		try{
			disableCache = Boolean.valueOf(request.getParameter("DISABLE_CACHE")).toString();
		}catch(Exception e){
			disableCache = "false";
		}
	%>

 	$.DISABLE_CACHE = <%=disableCache%>;
	
	</script>
	
	<script src="${url}/js/constants.js?version=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
	<script src="${url}/js/isaport.js?version=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
	<script src="${url}/js/utils.js?version=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
	<style type="text/css">
	    @import url("${url}/jquery/css/jquery.loadmask.hpCustom.css");
		@import url("${url}/jquery/css/jquery-ui.hpCustom.css");
		@import url("${url}/jquery/css/jquery.dataTables.hpCustom.css");
	  	@import url("${url}/css/layout.css");
		@import url("${url}/css/header.css");
		@import url("${url}/css/main_content.css");
		@import url("${url}/css/navigation.css");
	</style>
	<script type="text/javascript">	
	$.appContext = window.appContext;
	$.metricsUrl = "<%=request.getScheme() %>://<%=request.getServerName() %>:<%=request.getServerPort() %>/sitemetrics/";
	</script>
	<script src="${url}/js/sitemetrics.js" type="text/javascript"></script>
	
	