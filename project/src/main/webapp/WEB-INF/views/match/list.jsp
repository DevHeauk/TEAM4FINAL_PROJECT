<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>matchlist.jsp</title>
</head>
<body>
<a href="match_list2.do">리스트 템플릿</a>
<table>
	<thead>
			<tr>
				<th>경기번호</th>
				<th>hometeam</th>
				<th>awayteam</th>
				<th>언재</th>
				<th>장소</th>
				<th>자세히보자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${matchlist}">
				<tr>
					<td>${tmp.num }</td>
					<td>${tmp.homeTeam }</a></td>
					<td>${tmp.awayTeam }</td>
					<td>${tmp.matchDate }</td>
					<td>${tmp.ground }</td>
					<td><a href="detail.do?awayTeam=${tmp.awayTeam}&homeTeam=${tmp.homeTeam}&num=${tmp.num}">경기자세히보기</a></td>
				</tr>
			</c:forEach>
		</tbody>
</table>
</body>
</html>