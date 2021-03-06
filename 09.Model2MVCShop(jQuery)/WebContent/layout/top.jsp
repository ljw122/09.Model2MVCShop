<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
	<title>Model2 MVC Shop</title>
	
	<link href="../css/left.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	
		$(function(){
			
			$('td[width="115"]:contains("login")').bind('click', function(){
				$(window.parent.frames['rightFrame'].document.location).attr("href","../user/login");
			});
	
			$('td[width="56"]:contains("logout")').bind('click', function(){
				$(window.parent.document.location).attr("href","../user/logout");
			});
			
		});
	</script>
	
</head>

<body topmargin="0" leftmargin="0">
 
<table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="30"><h2>Model2 MVC Shop</h2></td>
    <td height="30" >&nbsp;</td>
  </tr>
  <tr>
    <td height="20" align="right" background="../images/img_bg.gif">
	    <table width="200" border="0" cellspacing="0" cellpadding="0">
	        <tr> 
	          <td width="115">
				<c:if test="${empty user }">
	              login   
				</c:if>
	          </td>
	          <td width="14">&nbsp;</td>
	          <td width="56">
	          	<c:if test="${!empty user }">
	              logout 
	          	</c:if>
	          </td>
	        </tr>
	    </table>
    </td>
    <td height="20" background="../images/img_bg.gif">&nbsp;</td>
  </tr>
</table>

</body>
</html>
