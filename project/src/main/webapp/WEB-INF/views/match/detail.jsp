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
<table>
	<thead>
			<tr>
				<th>경기번호</th>
				<th>hometeam</th>
				<th>awayteam</th>
				<th>장소</th>
				<th>언재할까</th>

			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${matchdto.homeTeam}</td>
					<td>${matchdto.awayTeam }</a></td>
					<td>${matchdto.homePoint }</td>
					<td>${matchdto.awayPoint}</td>
					<td>${matchdto.ground}</td>
					<td>${matchdto.matchDate }</td>
				</tr>
		</tbody>
		<c:if test="${sessionScope.id eq matchdto.homeTeam}">
			<form action="pointinsert.do?matchdto=${matchdto.homeTeam}">
				<label>${matchdto.homeTeam} 점수</label>
				<input type="text" id="hoempoint" name="homepoint"/>
				<label>${matchdto.awayTeam}</label>
				<input type="text" id="awaypoint" name="awaypoint">
			</form>
		</c:if>
</table>
</body>
</html>