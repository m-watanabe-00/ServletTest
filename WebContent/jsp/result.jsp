<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Thanks</title>
	</head>
<body>

	<p>お問合せありがとうございました！</p>

	<p>ご氏名：${name}</p>
	<p>会社：${company}</p>
	<p>メールアドレス：${mail}</p>
	<p>お問い合わせ内容：${comment}</p>
	<p>メールマガジン：
		<c:forEach var="dms" items="${dmList}">
   			 <c:out value="${dms}"/>
		</c:forEach>
	</p>
	<p>資料請求：${dl}</p>

</body>
</html>