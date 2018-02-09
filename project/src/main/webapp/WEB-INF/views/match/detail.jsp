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
		
		<c:if test="${matchdto.homePoint eq null }">
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
		</c:if>
		
	
</table>

<table>
	<h3>홈팀</h3>
	<tr>
		<th>이름</th>
		<th>포지션</th>
	</tr>
	<c:forEach var="tmp" items="${hometeammember}">
		<tr>
			<th>${tmp.name }</th>
			<th>${tmp.position }</th>
		</tr>
	</c:forEach>
</table>
<table>
	<h3>홈팀점수</h3>
	<tr>
		<th>승</th>
		<th>패</th>
		<th>전</th>
	</tr>
	<tr>
		<td>${hometeamdto.win }</td>
		<td>${hometeamdto.lose }</td>
		<td>${hometeamdto.total }</td>
	</tr>
</table>

<table>
	<h3>어웨이팀</h3>
	<tr>
		<th>이름</th>
		<th>포지션</th>
	</tr>
	<c:forEach var="tmp" items="${awayteammember}">
		<tr>
			<th>${tmp.name }</th>
			<th>${tmp.position }</th>
		</tr>
	</c:forEach>
</table>
<table>
	<h3>어웨이팀점수</h3>
	<tr>
		<th>승</th>
		<th>패</th>
		<th>전</th>
	</tr>
	<tr>
		<td>${awayteamdto.win }</td>
		<td>${awayteamdto.lose }</td>
		<td>${awayteamdto.total }</td>
	</tr>
</table>
</body>
</html>