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
				<th>homepoint</th>
				<th>awaypoint</th>
				<th>장소</th>
				<th>언재할까</th>

			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${matchdto.num}</td>
					<td>${matchdto.homeTeam}</td>
					<td>${matchdto.awayTeam }</a></td>
					<td>${matchdto.homePoint }</td>
					<td>${matchdto.awayPoint}</td>
					<td>${matchdto.ground}</td>
					<td>${matchdto.matchDate }</td>
				</tr>
		</tbody>
		<form action="pointinsert.do">
			<input type="hidden" name=num id=num value="${matchdto.num}">
			<input type="hidden" name=awayTeam id=awayTeam value="${matchdto.awayTeam }">
			<input type="hidden" name=homeTeam id=hoemTeam value="${matchdto.homeTeam }">
			<label>${matchdto.homeTeam} 점수</label>
			<input type="text" id="hoemPoint" name="homePoint"/>
			<label>${matchdto.awayTeam}</label>
			<input type="text" id="awayPoint" name="awayPoint">
			<button type="submit">입력</button>
		</form>
	
</table>

<table>
	<tr>
		<th>이름</th>
		<th>포지션</th>
	</tr>
	<c:forEach var="tmp" items="${memberlist }">
		<tr>
			<th>${tmp.name }</th>
			<th>${tmp.position }</th>
		</tr>
	</c:forEach>
</table>
</body>
</html>