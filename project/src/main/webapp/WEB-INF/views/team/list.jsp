<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>농구팀</h3>
<c:if test="${sessionScope.team eq null }">
    	<a href="insertform.do">팀만들기</a>
</c:if>

<table>
	<thead>
			<tr>
				<th>팀명</th>
				<th>전</th>
				<th>승</th>
				<th>패</th>
				<th>홈</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list}">
				<tr>
					<td><a href="detail.do?name=${tmp.name }">${tmp.name }</a></td>
					<td>${tmp.win }</td>
					<td>${tmp.lose }</td>
					<td>${tmp.total }</td>
					<td>${tmp.ground }</td>
					
				</tr>
			</c:forEach>
		</tbody>
</table>

		
		
</body>
</html>