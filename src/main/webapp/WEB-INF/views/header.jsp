<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
</head>
<body>
	<div class="header">
		<div id="inner">
			<h1 class="logo">
				<a href="#" onclick="location.href='main'" style="color: #6E6E6E; text-decoration: none;" >KOREA MOVIE</a>
			</h1>

		<ul class="content">
            <c:if test="${id.m_id == null}">
               <li><a href="#" onclick="location.href='movie_login'">
                  <img src="resources/img/로그인.png"> <span>로그인</span></a></li>
            
                     
               <li><a href="#" onclick="location.href='member_insert'">
                  <img src="resources/img/회원가입.png"> <span>회원가입</span></a></li>
            </c:if>

            <c:if test="${id.m_id != null}">
               <li><a href="#" onclick="location.href='logout'">
                  <img src="resources/img/로그인.png"> <span>로그아웃</span></a></li>
            
            
               <li><a href="#" onclick="location.href='member_modify'">
                  <img src="resources/img/myCGV.png"> <span>마이페이지</span></a></li>
            </c:if>
         </ul>
		<div class="container">
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
            
		</div>
		<div class="line"></div>
	</div>
	
</div>
</body>
</html>