<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String scheduleIdx = request.getParameter("idx");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="icon" type="image/png" href="resources/img/logoRed.png">
<link rel="stylesheet" href="resources/css/seat.css">
<script src="resources/js/HttpRequest.js"></script>
<script type="text/javascript">
	function ticketing(){
		//alert(1111)
		var movie = document.querySelector(".moviePhoto");
		var idx = movie.id;
		
		var seats = document.querySelectorAll(".seat .clicked");
		var result = {};

		seats.forEach(function(s){
			sendAjax(s.id);
	
		})
		
		console.log("예매에 성공하였습니다.")
	}
	
	function sendAjax(id){
		var url = "ticketing"
		var param = 'idx='+id;
		
		console.log(param);
		
		sendRequest(url, param, resultFn, "POST");
	}
	
	function resultFn(){
		if (xhr.readyState == 4 && xhr.status == 200) {
			var res = xhr.responseText;
			if(res > 0){
				alert("예매에 성공하였습니다.");
				location.href='movie_home';
			}
		}
	}
</script>
</head>
<body>
	 <%@ include file="header2.jsp" %>
  <div class="main nav-wrapper">
		<div class="inner">
			<div class="content">
				<div class="nav-inner d-flex">
					<div>
						<button>ENGLISH</button>
					</div>
					<div>
						<button onclick="location.href='theater'"><i class="bi bi-clock-fill"></i>상영시간표</button>
					</div>
					<div>
						<button id="refreshButton" onclick="window.location.reload();"><i class="bi bi-arrow-counterclockwise"></i>예매 다시하기</button>
					</div>
				</div>
			</div>
      <div class="select-wrap">
        <div class="select-space">
          <div class="select-title"><h3>인원/좌석</h3></div>
          <div class="select-box d-flex">
            <div class="select-seat-number">
              <div class="select-seat d-flex">
                <div class="people-max">*최대 5명까지 가능</div>
                <div class="select-seat-age">일반</div>
                <div class="select-seat-number">
                  <ul class="select-seat-ul select-seat-ul-normal d-flex">
                    <li class="select-number normal"><button class="selected" value="0">0</button></li>
                    <li class="select-number normal"><button value="1">1</button></li>
                    <li class="select-number normal"><button value="2">2</button></li>
                    <li class="select-number normal"><button value="3">3</button></li>
                    <li class="select-number normal"><button value="4">4</button></li>
                    <li class="select-number normal"><button value="5">5</button></li>
                  </ul>
                </div>
              </div>
              <div class="select-seat d-flex">
                <div class="select-seat-age">청소년</div>
                <div class="select-seat-number">
                  <ul class="select-seat-ul select-seat-ul-teen d-flex">
                    <li class="select-number teen"><button class="selected" value="0">0</button></li>
                    <li class="select-number teen"><button value="1">1</button></li>
                    <li class="select-number teen"><button value="2">2</button></li>
                    <li class="select-number teen"><button value="3">3</button></li>
                    <li class="select-number teen"><button value="4">4</button></li>
                    <li class="select-number teen"><button value="5">5</button></li>
                  </ul>
                </div>
              </div>
              <div class="select-seat d-flex">
                <div class="select-seat-age">우대</div>
                <div class="select-seat-number">
                  <ul class="select-seat-ul  select-seat-ul-old d-flex">
                    <li class="select-number old"><button class="selected" value="0">0</button></li>
                    <li class="select-number old"><button value="1">1</button></li>
                    <li class="select-number old"><button value="2">2</button></li>
                    <li class="select-number old"><button value="3">3</button></li>
                    <li class="select-number old"><button value="4">4</button></li>
                    <li class="select-number old"><button value="5">5</button></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-info">
              <p class="theater-info">
                <span class="select-theater-place selected-theater-place-info">${dto.theater_name }</span>
              <span class="select-theater-place selected-theater-place-info">${dto.location }</span>
                <span>남은좌석</span><span class="remain-seats">152(*수정필요)</span>/<span class="all-seats">172(*수정필요)</span>
              </p>
              <div class="playYMD">
                <p></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="seat-wrapper">
        <div class="seat-box">
          <div class="screen"><span class="text">SCREEN</span></div>
          <div class="seat">  
	          <c:forEach var="s" items="${list}">
	          	<c:if test="${s.seat_order eq 0}">
			        <c:set var="seatClass" value=""/>
			        <c:if test="${s.use_seat eq 1}">
			            <c:set var="seatClass" value="hidden-seat"/>
			            <input type="button" id="${s.idx}" name="seats" class="seat ${seatClass}" value="${s.seat_row}${s.seat_col}">
			        </c:if>
			        <c:if test="${s.use_seat eq 0}">
			            <input type="button" id="${s.idx}" name="seats" class="seat ${seatClass}" value="${s.seat_row}${s.seat_col}">
			        </c:if>
			    </c:if>
			    <c:if test="${s.seat_order eq 1}">
			        <input type="button" id="${s.idx}" name="seats" class="seat" value="${s.seat_row}${s.seat_col}" disabled="disabled">
			    </c:if>
				<c:choose>
				    <c:when test="${s.theater_num eq 9 and s.seat_col eq 14}">
				        <br>
				    </c:when>
				    <c:when test="${s.theater_num eq 664 and s.seat_col eq 22}">
				        <br>
				    </c:when>
				</c:choose>
	          </c:forEach>    
          </div>
        </div>
      </div>
		</div>
	</div>
  <div class="popup-wrap">
    <div class="inner row">
      <p class="left col"><img src="resources/img/leftbtn.png" alt="" onclick="location.href='movie_schedule'"></p>
      <div class="info-movie-photo col"></div>
      <div class="info-movie col">
        <span class="movie-poster"><img src="" alt=""></span>
        <div class="movie-title"><a href="#">${dto.subject }</a></div>
        <div class="movie-type"><p>2D</p></div>
        <div class="movie-rating">
        	<span>
				<c:choose>
				    <c:when test="${dto.age eq 0}">
				        전체 관람가
				    </c:when>
				    <c:otherwise>
				        ${dto.age}세 관람가
				    </c:otherwise>
				</c:choose>
    		</span>
    	</div>
      </div>
      <div class="info-theater col">
        <div class="name">
          <span>${dto.subject }</span>
        </div>
        <div class="date">
          <span></span>
        </div>
          <span>상영관: ${dto.location } (Laser)</span>
        <div class="num">
          <span></span>
        </div>
      </div>
      <div class="info-seat col d-flex">
        <div class="seat-name">선택좌석 : <br><span></span></div>
      </div>
      <div class="info-money col"></div>
      <div class="right col"><img src="resources/img/rightbu.png" alt="" onclick="ticketing()"></div>
    </div>
  </div>
  <span>&nbsp;</span>


<script src="resources/js/selectSeat.js"></script>
<script type="text/javascript">
	//영화 시간표 시간계산
	var date = "${dto.movie_date}";
	var start_time = "${dto.movie_start}";
	var runtime = ${dto.runtime};
	
	//텍스트 값을 시간객체에 넣기
	var nowTime = new Date(date);
	nowTime.setHours(parseInt(start_time.split(':')[0], 10));
	nowTime.setMinutes(parseInt(start_time.split(':')[1], 10));
	
	var endTime = new Date(nowTime.getTime() + runtime*60000);
	
	//요일 구하기
	var days = ['일', '월', '화', '수', '목', '금', '토'];
	var dayOfWeek = days[nowTime.getDay()];

	//시간객체를 텍스트모양으로 변경
	var cal_start_time = nowTime.getHours() + ':' + (nowTime.getMinutes() < 10 ? '0' : '') + nowTime.getMinutes();
	var cal_end_time = endTime.getHours() + ':' + (endTime.getMinutes() < 10 ? '0' : '') + endTime.getMinutes();
	
	//DIV에 계산한 날짜 입력하기
	var pclass = document.querySelector(".playYMD p");
	pclass.textContent = date + "  ("+ dayOfWeek + ") " + cal_start_time + " ~ " + cal_end_time;
	
	var sclass = document.querySelector(".info-theater.col .date span");
	sclass.textContent = date + "  ("+ dayOfWeek + ") " + cal_start_time;
	
	//영화 포스터 입력
	var photoDiv = document.querySelector(".info-movie-photo.col");
	var img = document.createElement("img");
	img.src = 'resources/img/photo/mp'+${dto.movie_idx}+'.jpg';
	img.width = '100';
	img.id = ${dto.idx};
	img.classList.add("moviePhoto");
	photoDiv.appendChild(img);
	
</script>

</body>
</html>