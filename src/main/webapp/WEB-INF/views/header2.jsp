<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/header.css">
</head>
<body>

	<div class="MenuHeader">
		<div class="MenuHeaderRow">
			<div id="MenuInner" style="display: flex; margin-top:20px; justify-content: center; height:100px;" >
				<h1 class="logo" style="margin: 30px 700px 0 0">
					<a href="#" onclick="location.href='movie_home'" style="color: #6E6E6E; text-decoration: none;" >KOREA MOVIE</a>
				</h1>
	
			<ul class="MenuContent" style="margin-top: 30px">
	            <c:if test="${id.m_id == null}">
	               <li><a href="#" onclick="location.href='movie_login'" style="text-decoration: none;">
	                  <img src="resources/img/로그인.png"> <span style="color: #6E6E6E;">로그인</span></a></li>
	            </c:if>
	            <c:if test="${id.m_id == null}">   
	               <li><a href="#" onclick="location.href='member_insert'" style="text-decoration: none;">
	                  <img src="resources/img/회원가입.png"> <span style="color: #6E6E6E;">회원가입</span></a></li>
	            </c:if>
	
	            <c:if test="${id.m_id != null}">
	               <li><a href="#" onclick="location.href='logout'" style="text-decoration: none;">
	                  <img src="resources/img/로그인.png"> <span style="color: #6E6E6E;">로그아웃</span></a></li>
	            </c:if>
	            
	            <c:if test="${id.m_id != null}">
	               <li><a href="#" onclick="location.href='member_modify'" style="text-decoration: none;">
	                  <img src="resources/img/myCGV.png"> <span style="color: #6E6E6E;">마이페이지</span></a></li>
	            </c:if>
	         </ul>
         	</div> <!-- MenuInner -->

		<div class="MenuContainer">
            <div class="nav row">
                <div class="col-1">
                    <a href="movie_chart" class="nav-list">영화</a>
                </div>
                <div class="col-1">
                    <a href="theater" class="nav-list">극장</a>
                </div>
                <div class="col-1">
                    <a class="red" href="movie_schedule" class="nav-list">예매</a>
                </div>
                <div class="col-1">
                    <a class="nav-list">스토어</a>
                </div>
                <div class="col-1">
                    <a class="nav-list">이벤트</a>
                </div>
                <div class="col-1">
                    <a class="nav-list">혜택</a>
                </div>
                <div class="col"></div>
                <div class="col"></div>
                <div class="col d-flex">
                    <input type="text">
                    <i class="bi bi-search"></i>
                </div>
                
            </div>
            
		</div> <!-- MenuContainer -->
		<div class="line" style="border-top: 5px solid red;"></div>
		</div>
	</div> <!-- MenuHeader -->
	

</body>
</html>