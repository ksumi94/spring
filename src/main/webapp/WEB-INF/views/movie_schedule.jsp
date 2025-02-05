<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/HttpRequest.js"></script>
<link rel="stylesheet" href="resources/css/movie_schedule.css" />
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
	<div id=container>
		<div class="inner">
			<div class="content navi">
				<div class="nav-inner d-flex">
					<div>
						<button>
							ENGLISH</a>
						</button>
					</div>
					<div>
						<button onclick="location.href='theater'">
							<i class="bi bi-clock-fill"></i>상영시간표
						</button>
					</div>
					<div>
						<button onclick="window.location.reload();">
							<i class="bi bi-arrow-counterclockwise"></i>예매 다시하기
						</button>
					</div>
				</div>
			</div>
			<div class="steps">
				<div class="select-movie box">
					<div class="col-head">
						<h3>영화</h3>
					</div>
					<div class="col-body">
						<div class="movie_menu">
							<ul id="menu">
								<li><a href="#">전체</a></li>
								<li><a href="#">아트하우스</a>
									<ul class="movie_menu_depth">
										<li><a href="#">메뉴1</a></li>
										<li><a href="#">메뉴2</a></li>
										<li><a href="#">메뉴3</a></li>
									</ul></li>
								<li><a href="#">특별관</a></li>
							</ul>
						</div>
						<div class="movie_list">
							<ul class="list">
								<c:forEach var="m" items="${movie_select }">
									<li id="${m.idx }" class="click"><a><img
											src="resources/img/age${m.age }.PNG"><span class="text">${m.subject }</span></a></li>
								</c:forEach>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span> </a></li>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age15.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age12.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span></a></li>
								<li><a><img src="resources/img/age18.PNG"><span
										class="text">영화1</span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="select-theater box">
					<div class="col-head">
						<h3>극장</h3>
					</div>
					<section class="sec">
						<div class="city-box">
							<ul class="question-list">
								<li class="list">
									<p class="question">서울</p>
									<div class="answer">
										<ul>
											<c:forEach var="area" items="${areaSelect}">
												<c:choose>
													<c:when test="${fn:contains(area.area, '서울')}">
														<li class="click1" id="${area.idx }"><a>${area.theater_name}</a></li>
													</c:when>
												</c:choose>
											</c:forEach>
										</ul>
									</div>
								</li>
								<li class="list">
									<p class="question">인천</p>
									<div class="answer">
										<ul>
											<c:forEach var="area" items="${areaSelect}">
												<c:choose>
													<c:when test="${fn:contains(area.area, '인천')}">
														<li class="click1" id="${area.idx }"><a>${area.theater_name}</a></li>
													</c:when>
												</c:choose>
											</c:forEach>
										</ul>
									</div>
								</li>
								<li class="list">
									<p class="question">경기</p>
									<div class="answer">
										<ul>
											<c:forEach var="area" items="${areaSelect}">
												<c:choose>
													<c:when test="${fn:contains(area.area, '경기')}">
														<li class="click1" id="${area.idx }"><a>${area.theater_name}</a></li>
													</c:when>
												</c:choose>
											</c:forEach>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</section>
				</div>
				<div class="select-date box">
					<div class="col-head">
						<h3>날짜</h3>
					</div>
					<div class="col-body">
						<div class="calendar">
							<ul class="contens ">
								<li class="month dimmed"><span class="year">2024</span> <span
									class="month">2</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="select-time box">
					<div class="col-head">
						<h3>시간</h3>
					</div>
					<div class="col-body"></div>
				</div>
			</div>
			<div class="popups">
				<div class="row choose-movie">
					<div class="left col 3">
	                  <img src="" alt="" id="movie-poster">
	               </div>
					<div class="info-movie col 3">
						<span class="movie-poster"></span>
						<div class="movie-title">
							<a href="#" id="resultContainer"></a>
						</div>
						<div class="movie-type">
							<p>2D</p>
						</div>
						<div class="movie-rating">
							<span id="watchAge"></span>
						</div>
					</div>
					<div class="info-theater col 3">
						<div class="name">
							<span id="clickedTheater"></span>
						</div>
						<div class="date">
							<span id='clickedDate'></span>
						</div>

						<div class="num">
							<span id="clickedTime"></span>
						</div>
					</div>
					<div class="info col 3"></div>
					<div class="right col 3">
						<a href="#" onclick="nextPage()">
							<img src="resources/img/rightbu.png" alt="">
						</a>
					</div>
				</div>
			</div>
			
		</div>
	</div>



	<script src="resources/js/movie_schedule.js"></script>
	<script type="text/javascript">
	
	function nextPage(){
		var scheduleIdx = document.querySelector(".time.clicked").id
		window.location.href = "http://localhost:9090/cgv/seat?idx="+scheduleIdx;
	}
	
	
	
	
	
	
	// 영화 클릭 토글
	let clickElements = document.getElementsByClassName("click");

	function toggleOnClass(clickedElement) {
	    let clickedElements = document.querySelectorAll(".click.clicked");
	    clickedElements.forEach(element => {
	        element.classList.remove("clicked");
	    });
	
	    if (clickedElement.classList.contains("clicked")) {
	        clickedElement.classList.remove("clicked");
	    } else {
	        clickedElement.classList.add("clicked");
	        // 클릭한 영화의 ID를 가져오기
	        let movieId = clickedElement.id;
	        // 서버에 해당 ID를 전송하고 영화 정보를 가져오는 등의 작업 수행
	        console.log("Clicked movie ID: " + movieId);
	    }
	}
	
	for (let i = 0; i < clickElements.length; i++) {
	    clickElements[i].addEventListener("click", function () {
	        toggleOnClass(this);
	    });
	}
	
	  
	// 극장 클릭 이벤트
	let click1Elements = document.getElementsByClassName("click1");

	  function toggleOnClass(clickedElement) {
	    // clicked 클래스를 가진 엘리먼트들을 찾아서 clicked 클래스를 제거
	    let clickedElements = document.querySelectorAll(".click1.clicked");
	    clickedElements.forEach(element => {
	      element.classList.remove("clicked");
	    });
		
	    	    
	    // 현재 클릭된 엘리먼트에 clicked 클래스를 추가하거나 제거
	    if (clickedElement.classList.contains("clicked")) {
	      clickedElement.classList.remove("clicked");

	    } else {
	      clickedElement.classList.add("clicked");

	      
	    }
	  }

	  for (let i = 0; i < click1Elements.length; i++) {
	    click1Elements[i].addEventListener("click", function () {
	      toggleOnClass(this);
	    });
	  }
	  
	  
	  //영화 시간 클릭
	  
	  
	  
	  
	// HTMLCollection을 가져옵니다.
	  let choose = document.getElementsByClassName('click');
	  let theater_choose = document.getElementsByClassName('click1');

	  console.log(choose.length)
	  // 반복문을 사용하여 각 요소에 이벤트 리스너를 추가합니다.
	  for (let i = 0; i < choose.length; i++) {
	    choose[i].addEventListener('click', function () {
	    	var choose_name = this.id;
	    	console.log(choose_name)
	    	
	         var imagePath = 'resources/img/photo/mp' + choose_name + '.jpg';
	         
	         // movie-poster라는 id를 가진 img 찾기
	         var posterImg = document.getElementById('movie-poster');
	         
	         // 이미지 경로를 설정
	         posterImg.src = imagePath;
	         posterImg.alt = "Movie Poster";

	    	var clickSubject = document.querySelector('.clicked .text').textContent
	      	console.log(clickSubject)
	      	// 가져온 텍스트를 어딘가에 보여주는 예시
	        var resultContainer = document.getElementById('resultContainer'); // 결과를 표시할 엘리먼트 선택
	        resultContainer.textContent = clickSubject;
	        
	        var clickedImg = document.querySelector('.clicked img');
	        var src = clickedImg.getAttribute('src');

	        // 파일 이름에서 나이 정보 추출
	        var ageMatch = src.match(/age(\d+)\.PNG/);
	        var age = ageMatch ? ageMatch[1] : null;

	        // 나이 정보에 따라 메시지 출력
	        var message = age !== '0' ? (age + '세이상 관람가입니다') : '전체 이용가입니다';
	        console.log(message);
	        
	     	// 메시지를 표시할 div 요소를 찾기
	        var messageDiv = document.getElementById('watchAge');

	        // div에 메시지 추가
	        messageDiv.textContent = message;

		      	
	    	for(let j = 0; j < theater_choose.length; j++){
	    		theater_choose[j].addEventListener('click', function () {
	    		      var theater_name = this.id;
	    		      console.log(theater_name)
	    		      check (theater_name, choose_name);
	    		      
	    		      // 영화관명 화면에 보여주는 거
	    		      var clickTheater = document.querySelector('.click1.clicked a').textContent
	    		      	console.log(clickTheater)
	    		      	// 가져온 텍스트를 어딘가에 보여주는 예시
	    		      var resultContainer = document.getElementById('clickedTheater'); // 결과를 표시할 엘리먼트 선택
	    		      resultContainer.textContent = clickTheater;
	    		      
	    		      

	    		});
	    		
	
	    	}//j for문 종료
	    }); //choose[i]
	  }// i for문


	   function check (theater_name, choose_name){
		  if(theater_name == null){
			  alert("영화관 선택해라")
			  return;
		  }
		  if(choose_name == null){
			  alert("영화관 선택해라")
			  return;
		  }
		  var url = "movieTimes"; //맵핑
		  var param = "movie_idx="+choose_name+"&theater_idx="+theater_name; //파람
		  sendRequest(url,param,timeCheck,"POST");
		  	  
	  }
	  
	  function send(){
		  
	  }
	  
	  function timeCheck() {
		    if (xhr.readyState == 4 && xhr.status == 200) {
		        var div = document.querySelector('.select-time .col-body');
		        var data = xhr.responseText;
		        var json = (new Function('return' + data))();

		        var sdElements = document.querySelectorAll('.day-box .day');

		        sdElements.forEach(function (element) {
		            element.addEventListener('click', function () {
		                var sd = this.textContent.trim();
		                console.log(sd);
		                // 클릭한 요소에 대한 작업 수행
		                var ul = document.createElement('ul');
		                var hasMovie = false;
		                
		                var sdDisplay = document.getElementById('clickedDate');
		                if (sdDisplay) {
		                    sdDisplay.textContent = sd + '일'; // 변경된 부분
		                } 
		                
		                json.forEach(function (data) {
		                    var date = data.movie_date.split('-')[2]; // 2024-02-14 14가 저장됨
		                    var time = data.movie_start;
							
		                    
		                    
	
		                    if (sd == date) {
		                        
		                    	hasmovie = true;
		                        var li = document.createElement('li');
		                        li.onclick = send;
		                        li.setAttribute('id', data.idx);
		                        li.textContent = time;
		                        li.classList.add('time'); // "time" 클래스 추가

		                        ul.appendChild(li);
		                        div.appendChild(ul);
		                        
		                      
		                        
		                        
		                        let timeElements = document.getElementsByClassName("time");

		                  	  function toggleOnClass(clickedElement) {
		                  	      
		                  	      let clickedElements = document.querySelectorAll(".time.clicked");
		                  	      clickedElements.forEach(element => {
		                  	          element.classList.remove("clicked");
		                  	      });

		                  	      // 현재 클릭된 엘리먼트에 clicked 클래스를 추가하거나 제거
		                  	      if (clickedElement.classList.contains("clicked")) {
		                  	          clickedElement.classList.remove("clicked");
		                  	      } else {
		                  	          clickedElement.classList.add("clicked");
		                  	        var whatTime = document.querySelector('.time.clicked').textContent
		                  	          console.log(whatTime)
		                  	        var resultContainer = document.getElementById('clickedTime');
		      	    		      	resultContainer.textContent = whatTime;
		                  	      }
		                  	  }

		                  	  for (let i = 0; i < timeElements.length; i++) {
		                  	      timeElements[i].addEventListener("click", function () {
		                  	          toggleOnClass(this);
		                  	          
		                  	          
		                  	      });
		                  	  }
		                    } 
		                });
		            });
		        });
		    }
		}
	  
	  
	  
	  
	  
	 </script>
</body>
</html>