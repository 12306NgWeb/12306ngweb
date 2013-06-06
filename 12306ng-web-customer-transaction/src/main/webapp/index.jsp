<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>IdentifyingCode page</title>  
    <script type="text/javascript">  
        function myReload(){  
            document.getElementById("createCheckCode").src=document.getElementById("createCheckCode").src + "servlet/SecurityCodeServlet?"+new Date().getTime();  
        }  
    </script>  
  </head>  
    
  <body>  
    <form action="PictureCheckCode" method="post">  
<!--         <input name="checkCode" type="text" id="checkCode" title="验证码区分大小写" maxlength="4">   -->
        <img id="createCheckCode" src="servlet/SecurityCodeServlet?width=90&height=50">  
        <a href="#" onClick="myReload()">看不清，换一个</a>  
    </form>  
    
    <fieldset>
	 <legend>验证码 Demo</legend>
	
<img src='servlet/SecurityCodeServlet?width=90&height=50'
	onclick="this.src='servlet/SecurityCodeServlet?'+new Date();"
	width="61" height="19" />
	
	&nbsp;&nbsp;&nbsp;
	<span style="color: red; font-size: 12px;" >点击图片，可以更改验证码</span>
</fieldset>
  </body>
</html>
