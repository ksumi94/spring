<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/moviechart.css" />
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
	<div id="chartcontainer">
		<div id="header">
			<!-- 상단바 메뉴<h1 id="main">
				<a href="#" onclick="location.href='movie_home'">KOREA MOVIE</a>
			</h1>
			<ul id="content">
				<li><a href="#"><img src="resources/image/로그인.png"> <span>로그인</span></a>
				</li>
				<li><a href="#"><img src="resources/image/회원가입.png">
						<span>회원가입</span></a></li>
				<li><a href="#"><img src="resources/image/myCGV.png">
						<span>마이페이지</span></a></li>
			</ul>
		</div>-->
		<section class="con2">
			<div class="container">
				<div class="movie-chart">
					<div class="movie-btn-wrap">
						<div class="right-btn-box">
							<h2>
								<a href="#" onclick="location.href='movie_chart'">무비차트</a>
							</h2>
						</div>
					</div>
					<div class="swiper-wrapper row">
						<div class="swiper-slide col">
							<div class="chart-ranking">
								<p>No.1</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/wongcar.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/전체이용가.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>웡카</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />94%</span>
								<span class="protage">예매율 41.1%</span><br> <span>2024.01.31
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=2">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking">
								<p>No.2</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/guimeul.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>귀멸의칼날</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 8.6%</span><br> <span>2024.02.14
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=3">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking">
								<p>No.3</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/simin.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>시민덕희</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />96%</span>
								<span class="protage">예매율 7.3%</span><br> <span>2024.01.24
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=4">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.4</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/dogdays.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/12세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>도그데이즈</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 6.5%</span><br> <span>2024.02.07
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=5">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
					</div>
					<div class="swiper-wrapper row">
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.5</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/deadman.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>데드맨</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />99%</span>
								<span class="protage">예매율 5.1%</span><br> <span>2024.02.07
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=6">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.6</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/정글번치.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/전체이용가.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>정글번치-월드투어</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />95%</span>
								<span class="protage">예매율 1.8%</span><br> <span>2024.01.31
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=7">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.7</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/아가일.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/12세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>아가일</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />81%</span>
								<span class="protage">예매율 5.8%</span><br> <span>2024.02.07
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=8">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.8</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/추락의해부.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>추락의 해부</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />96%</span>
								<span class="protage">예매율 1.4%</span><br> <span>2024.01.31
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=9">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
					</div>
					<div class="swiper-wrapper row">
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.9</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/소풍.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/12세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>소풍</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />95%</span>
								<span class="protage">예매율 3.1%</span><br> <span>2024.02.07
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=10">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.10</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/상견니.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/15세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>상견니</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />83%</span>
								<span class="protage">예매율 0.1%</span><br> <span>2023.01.25
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=11">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.11</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/외계+인 2부.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/12세.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>외계+인 2부</p>
								<span><img src="resources/imgs/gold-egg.png" alt="" />92%</span>
								<span class="protage">예매율 0.1%</span><br> <span>2024.01.10
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=12">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
							</div>
						</div>
						<div class="swiper-slide col">
							<div class="chart-ranking2">
								<p>No.12</p>
							</div>
							<div class="img-wrap">
								<img src="resources/imgs/아기상어 극장판-사이렌 스톤의 비밀.jpg" alt="" />
								<div class="age">
									<img src="resources/imgs/전체이용가.JPG">
								</div>
							</div>
							<div class="movie-info-box">
								<p>아기상어 극장판-사이렌 스톤의 비밀</p>
								<span><img src="resources/imgs/white-egg.png" alt="" />94%</span>
								<span class="protage">예매율 3.0%</span><br> <span>2024.02.07
									개봉</span>
							</div>
							<div class="ticketing">
								<a href="info?idx=13">상세보기</a>
								<button class="button2" onclick="location.href='movie_schedule'">예매하기</button>
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
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
		
	</script>
</body>
</html>