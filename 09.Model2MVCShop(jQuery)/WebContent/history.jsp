<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>��� ��ǰ ����</title>

</head>
<body>
	����� ��� ��ǰ�� �˰� �ִ�
<br>
<br>

<c:forTokens var="i" items="${cookie.history.value }" delims=",">
	<a href="product/getProduct?prodNo=${i}&menu=search" target="rightFrame">${i}</a><br/>
</c:forTokens>

</body>
</html>