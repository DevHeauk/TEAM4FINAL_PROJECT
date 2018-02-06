<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertform</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<!-- 새글 작성 form -->
	<form action="insert.do" method="post">
		<div class="form-group">
			<label for="writer">팀명</label>
			<input class="form-control" type="text" id="name" name="name"/>
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<input class="form-control" type="text" name="ground" id="ground"/>
		</div>
		<button  
			class="btn btn-success" type="submit">확인</button>
	</form>
</body>
</html>