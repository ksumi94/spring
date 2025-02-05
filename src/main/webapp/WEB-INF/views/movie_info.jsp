<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

</script>
<meta charset="UTF-8">
<title>영화상세보기</title>
<link rel="stylesheet" href="resources/css/movieInfo.css" />
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
	<div id="container">
		<div class="moviecontent">
			<div class="movieinfo">
				<div class="movieimg"></div>
				<div class="boxcontent">
					<div class="title">
						<strong>${dto.subject }</strong>
					</div>
					<div class="spec">
						<dl>
							<dt>감독 : ${dto.director }</dt>
							<dt>배우 : ${dto.actor }</dt>
							<dt>장르 : ${dto.category }</dt>
							<dt>개봉 : ${dto.open_date }</dt>
						</dl>
					</div>
					<span class="like"> <a href="movie_schedule">예매하기</a>
					</span>
				</div>
			</div>
			<div class="moviestory">
				<div class="story">${dto.detail_text }</div>
			</div>
		</div>
		<footer class="footer">
			<div class="container">
				<div class="company-info">
					<ul class="">
						<li class=""><a href="#">회사소개</a></li>
						<li class=""><a href="#">지속가능경영</a></li>
						<li class=""><a href="#">IR</a></li>
						<li class=""><a href="#">채용정보</a></li>
						<li class=""><a href="#">광고/제휴/출점문의</a></li>
						<li class=""><a href="#">이용약관</a></li>
						<li class=""><a href="#">편성기준</a></li>
						<li class=""><a href="#">개인정보처리방침</a></li>
						<li class=""><a href="#">법적고지</a></li>
						<li class=""><a href="#">이메일주소무단수집거부</a></li>
						<li class=""><a href="#">윤리경영</a></li>
						<li class=""><a href="#">사이버감사실</a></li>
					</ul>
				</div>
				<div class="conpany-address-wrap">
					<div class="address">
						<span>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</span><br>
						<span>대표이사 : 허민회 사업자등록번호 : 104-81-45690 통신판매업신고번호 :
							2017-서울용산-0662 사업자정보확인</span><br> <span>호스팅사업자 : CJ올리브네트웍스
							개인정보보호 책임자 : 도형구 대표이메일 : cjcgvmaster@cj.net</span><br> <span>©
							CJ CGV. All Rights Reserved</span>
					</div>
					<div class="buttonbox">
						<button type="button">예매하기</button>
						<div class="list-box">
							<div class="question-list">
								<p class="question">계열사바로가기</p>
								<div class="answer">
									<ul>
										<li>CJ주식회사</li>
										<li>CJ제일제당</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script>
		var photoDiv = document.querySelector(".movieimg");
		var img = document.createElement("img");
		img.src = 'resources/img/photo/mp' + ${dto.idx} + '.jpg';
		img.width = '200';
		img.id = ${dto.idx};
		photoDiv.appendChild(img);
	</script>
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