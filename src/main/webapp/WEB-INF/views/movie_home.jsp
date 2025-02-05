<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/movie.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />

</head>
<body>
	 
<%@ include file="header2.jsp" %>
	<div id="contain">
		<div id="inner">
		
			<!-- 상단바 메뉴 <h1 id="main">
				<a href="#" onclick="location.href='main'">KOREA MOVIE</a>
			</h1>

			<ul id="content">

				<c:if test="${id.m_id == null}">
					<li><a href="#" onclick="location.href='movie_login'"><img
							src="resources/img/로그인.png"> <span>로그인</span></a></li>
				</c:if>

				<c:if test="${id.m_id != null}">
					<li><a href="#" onclick="location.href='logout'"><img
							src="resources/img/로그인.png"> <span>로그아웃</span></a></li>
				</c:if>

				<li><a href="#" onclick="location.href='member_insert'"><img
						src="resources/img/회원가입.png"> <span>회원가입</span></a></li>

				<li><a href="#" onclick="location.href='member_modify'"><img
						src="resources/img/myCGV.png"> <span>마이페이지</span></a></li>

			</ul>
		</div>
		<div class="container">
            <div class="nav row">
                <div class="col-1">
                    <a href="#" class="nav-list">영화</a>
                </div>
                <div class="col-1">
                    <a href="#" class="nav-list">극장</a>
                </div>
                <div class="col-1">
                    <a class="red" href="#" class="nav-list">예매</a>
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
      </div>-->
		<div class="view">
			<div class="content2">
				<div class="movie_wrap">
					<video class="video1" autoplay muted>
						<source src="resources/video/윙카.mp4">
					</video>
					<div class="title">
						<h2>웡카</h2>
						<br>
						<p>
							"세상에서 가장 달콤한 여정<br> 좋은 일은 모두 꿈에서부터 시작된다!"
						</p>
						<br>
						<div class="title_btn">
							<input type="button" value="상세보기">
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="con2">
			<div class="container">
				<div class="movie-chart">
					<div class="movie-btn-wrap">
						<div class="right-btn-box">
							<h3>
								<a href="#">무비차트</a>
							</h3>
							<h3>
								<a href="#">│ 상영예정작</a>
							</h3>
						</div>
						<button onclick="location.href='movie_chart'">전체보기 ></button>
					</div>
					<div class="swiper-wrapper row">
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/wongcar.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/전체이용가.JPG">
								</div>
								<div class="chart-num">1</div>
								<div class="reserve">
									<a href="info?idx=2">상세보기</a> <a href="movie_schedule">예매하기</a>
								</div>
							</div>
							<div class="movie-info-box">
								<p>웡카</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />94%</span>
								<span class="protage">예매율 41.1%</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/guimeul.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
								<div class="chart-num">2</div>
								<div class="reserve">
									<a href="info?idx=3">상세보기</a> <a href="movie_schedule">예매하기</a>

								</div>
							</div>
							<div class="movie-info-box">
								<p>귀멸의칼날</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 8.6%</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/simin.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
								<div class="chart-num">3</div>
								<div class="reserve">
									<a href="info?idx=4">상세보기</a> <a href="movie_schedule">예매하기</a>
								</div>
							</div>
							<div class="movie-info-box">
								<p>시민덕희</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />96%</span>
								<span class="protage">예매율 7.3%</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/dogdays.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/12세.JPG">
								</div>
								<div class="chart-num">4</div>
								<div class="reserve">
									<a href="info?idx=5">상세보기</a> <a href="movie_schedule">예매하기</a>
								</div>
							</div>
							<div class="movie-info-box">
								<p>도그데이즈</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 6.5%</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/deadman.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
								<div class="chart-num">5</div>
								<div class="reserve">
									<a href="info?idx=6">상세보기</a> <a href="movie_schedule">예매하기</a>
								</div>
							</div>
							<div class="movie-info-box">
								<p>데드맨</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 5.1%</span>
							</div>
						</div>
						<div class="slide">
							<span class="prev">&lt;</span> <span class="next">&gt;</span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="con2">
			<div class="container">
				<div class="movie-chart">
					<div class="movie-btn-wrap">
						<div class="right-btn-box">
							<h3>
								<a href="#">EVENT</a>
							</h3>
						</div>
						<button>전체보기 ></button>
					</div>
					<div class="swiper-wrapper row">
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/wongcar-poster.jpg" alt="" />
							</div>
							<div class="event-info-box">
								<p>[웡카]IMAX 포스터</p>
								<span>2024.01.24~2024.02.06</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/wongcar-limited-poster.jpg" alt="" />
							</div>
							<div class="event-info-box">
								<p>[웡카]4DX 포스터</p>
								<span>2024.01.24~2024.02.06</span>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="img-wrap">
								<img src="resources/imgs/woncar-special-goods.jpg" alt="" />
							</div>
							<div class="event-info-box">
								<p>[웡카]SX 스페셜 굿즈</p>
								<span>2024.01.24~2024.02.06</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<%@ include file="footer.jsp" %>
	</div>
</div>

	
	
	<script>
		let question = document.getElementsByClassName("question");
		function questionOpen(question, answer) {
			if (answer.style.maxHeight) {
				answer.style.maxHeight = null;
				question.classList.remove("on");
			} else {
				answer.style.maxHeight = answer.scrollHeight + "px";
				question.classList.add("on");
			}
		}

		function questionClose(i, item) {
			for (let j = 0; j < question.length; j++) {
				if (i != j) {
					item[j].nextElementSibling.style.maxHeight = null;
					item[j].classList.remove("on");
				}
			}
		}

		for (let i = 0; i < question.length; i++) {
			question[i].addEventListener("click", function() {
				let answer = this.nextElementSibling;

				questionClose(i, question);
				questionOpen(question[i], answer);
			});
		}
		
		function goto(){
			location.href="movie_schedule";
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
		
	</script>
</body>
</html>