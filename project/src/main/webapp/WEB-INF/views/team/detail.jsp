<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

</head>
<body>
	<h1><strong>${Homedto.name }</strong></h1>
	<p><strong>${Homedto.win }</strong> 승 <strong>${Homedto.lose }</strong>패  <strong>${Homedto.total }</strong>전</p>
	<hr/>
    <c:forEach var="tmp" items="${memberlist }">
    	<div class="content">${tmp.id }</div>
    </c:forEach>
    <hr/>
    <hr/>
    <div class="content">${Homedto.ground }</div>
    <hr/>
    <a class="btn btn-default btn-xs" href="${pageContext.request.contextPath}/team/list.do">리스트로 가기</a>
    <c:if test="${sessionScope.team eq null }">
    	<a href="joiningconfirm.do?id=${id}&name=${Homedto.name}">팀가입</a>
    </c:if>
    <c:if test="${sessionScope.id ne dto.member }">
	<button class="btn btn-info" data-target="#matching" data-toggle="modal">매칭신청</button><br/>
	<button class="btn btn-info" data-target="#awayteamimfo" data-toggle="modal">상대정보</button><br/>

    </c:if>
    <c:if test="${sessionScope.id eq dto.member }">
    <!-- join 리스트 -->	
    <p>joinlist</p>
    <c:forEach var="tmp" items="${joininfo}">
		<button class="btn btn-info" data-target="#joininfo" data-toggle="modal">${tmp.id}</button>
		<br/>
	</c:forEach>	
	<!-- 매칭 리스트 -->
	<p>매칭리스트</p>
	<c:forEach var="tmp" items="${matchdtoList}">
		<button class="btn btn-info" data-target="#awayteamimfo${tmp.awayTeam }" data-toggle="modal">${tmp.awayTeam}</button><br/>
				
	</c:forEach>
		
		
    </c:if>

	

<!-- Modal -->
<div class="modal fade" id="matching" >
  <form action="matchinsert.do" method="post">
  <input type="hidden" name="name" value="${Homedto.name }">
  	<div class="modal-dialog">
    <div class="modal-content">
      <!-- header -->
      <div class="modal-header">
        <!-- 닫기(x) 버튼 -->
        <button type="button" class="close" data-dismiss="modal">×</button>
        <!-- header title -->
        <h4 class="modal-title">경기신청</h4>
      </div>
      <!-- body -->
      <div class="modal-body">
			<div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" id="matchDate" name="matchDate" value="경기날짜" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
			<div class="form-group">
				<label for="ground">경기장소</label>
				<input class="form-control" type="text" name="ground" id="ground"/>
			</div>
      </div>
      <!-- Footer -->
      <div class="modal-footer">
        Footer
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button class="btn btn-success" type="submit">확인</button>
      </div>
    </div>
  </div>
  </form>
</div>


<!-- away modal -->
<c:forEach var="tmp" items="${matchdtoList}">
	<div class="modal fade" id="awayteamimfo${tmp.awayTeam }" >
	  	<form action="matchsuccess.do">
	  		<input type="hidden" name="awayTeam" value="${tmp.awayTeam}" />
	  		<div class="modal-dialog">
	    <div class="modal-content">
	      <!-- header -->
	      <div class="modal-header">
	        <!-- 닫기(x) 버튼 -->
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <!-- header title -->
	        <h4 class="modal-title">${tmp.awayTeam}</h4>
	      </div>
	      <!-- body -->
	      <div class="modal-body">
				<p>상대팀정보</p>
	      </div>
	      <!-- Footer -->
	      <div class="modal-footer">
	        Footer
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	        <button class="btn btn-success" type="submit" >확인</button>
	      </div>
	    </div>
	  </div>
	  	</form>
	</div>
			
</c:forEach>	


<!-- joinlist modal -->
<!-- away modal -->
<c:forEach var="tmp" items="${joininfo}">
	<div class="modal fade" id="#joininfo" >
	  	<form action="join.do?joinid=${id}&teamname${Homedto.name } ">
	  		<input type="hidden" name="id" value="${tmp.id}" />
	  		<div class="modal-dialog">
		    <div class="modal-content">
		      <!-- header -->
		      <div class="modal-header">
		        <!-- 닫기(x) 버튼 -->
		        <button type="button" class="close" data-dismiss="modal">×</button>
		        <!-- header title -->
		        <h4 class="modal-title">${tmp.career}</h4>
		      </div>
		      <!-- body -->
		      <div class="modal-body">
					<p>${tmp.b_position }</p>
					<p>${tmp.name }</p>
					<p>${tmp.email}</p>
		      </div>
		      <!-- Footer -->
		      <div class="modal-footer">
		        Footer
		        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        <button class="btn btn-success" type="submit" >확인</button>
		      </div>
		    </div>
		  </div>
	  	</form>
	</div>
			
</c:forEach>	
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script>


</script>

</body>
</html>