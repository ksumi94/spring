<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String theaterName = request.getParameter("name");
	String theaterIdx = request.getParameter("idx");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    ul,
    li,
    ol {
      list-style: none;
    }
    a {
      text-decoration: none;
    }

	.container {width: 1116px;}
    .favorite-wrap{}

    .main .favorite-wrap h4 img{}

    .select-theater{width: 1000px; padding: 50px 0;margin: 0 auto;  }
    .select-favorite{display: flex; justify-content: center; align-items: center; padding-top: 50px;}
    .favorite-wrap{width: 1000px; height: 480px; background-image:url("resources/img/theater/theater_back.gif"); background-size: 100% 100%; }
    #favorite-theaters{display: flex;}
    .select-favorite li{border: 2px solid black;padding: 2px; margin-left: 2px;}
    .select-favorite li > a{width: 107px; height: 39px; border: 1px solid black; line-height: 39px; display: block;}


    /* ë¦¬ì¤í¸*/
    .city-list ul {
      padding: 0;
    }
    .main {
    }
    .main .city-list {
      /* width: 100%; */
      margin: 0 50px;
      border-top: 2px solid white;
      border-bottom: 2px solid white;
      padding: 8px 0;
      display: flex;
      justify-content: center;
    }
    .main .city-list > li {
      width: 100%;
      /* margin: 0 0 30px; */
      margin: 0;
    }
    .main .city-list .city {
      padding: 1px;
      font: bold 24px "inherit";
      margin: 2px 9px;
    }
    .main .city-list .area {
      /*background-color: yellow;*/
      font-size: 18px;
      line-height: 1.5;
      transition: 0;
      width: 100%;
      max-height: 0;
      overflow: hidden;
      margin-bottom: 30px;
      /* padding: 0 30px; */
      padding: 0;
    }
    .main .city-list li.view .area {
      height: 100%;
    }
    .city-list ul{position: relative; display: flex;}
    .city-list ul > li a {color: white;}
    
    .area{}
    .area a{font-size: 12px; color: white;}
    .area ul {display: flex; flex-direction: row; flex-wrap: wrap; width: 920px; margin: 20px 20px 0 20px;}
    .area ul > li {margin: 1px 10px; padding: 3px;}
    .area ul > li a::after {
    	display: inline-block;
	    content: '';
	    width: 1px;
	    height: 12px;
	    background: #b9b9b9;
	    position: absolute;
	    right: -11px;
	    top: 50%;
	    margin-top: -6px;
    }
    .select-city{}
    
    
    .wrap-theater h3{background-image: url("resources/img/theater/h3_theater_line.gif"); display: flex; justify-content: center;}
  
    .sect-theater {display: flex; justify-content: space-between;}
    .sect-theater h4 span{font-size: 40px; font-weight: 800;}
    .sect-theater a span {background-color: red; color:white; padding: 5px 30px;}
  	
  	.theater-ad {margin-top: 20px;}
  	.tab-menu ul {display: flex; justify-content: center; margin-top: 20px; }
  	.tab-menu ul > li {background-color: red; color: white; font-weight: 600; padding: 3px;}
  	.tab-menu li.on:before {
    content: "☞ ";
	}
	
	.cols-content {display: flex;}
	.cols-content .col-detail {margin-right: 20px; border: 1px solid gray; width: 936px;}
	.cols-content .col-aside {display:flex; flex-direction: column; width: 160px;}
	
	.sect-schedule {border-bottom: 2px solid black; border-top: 2px solid black;}
	
	.slider {display: flex; margin-left: 10px;}
	.slider button {border: none; background-color: transparent;}
	
	.item-wrap {width: 720px;}
	.item-wrap ul.week {display: flex; margin: 7px 0 0 -30px;}
	.item-wrap ul.week li {padding: 2px; margin: 2px 5px; width: 90px;}
	.item-wrap ul.week li strong {font-size: 40px; font-weight: bold; color: gray;}
	.item-wrap ul.week li.day.on {font-weight: bolder; color: black; border: 1px solid gray;}
	.item-wrap ul.week.none { display: none;}
	
	.slider-info ul{display: flex; margin-top: 10px; justify-content: right;}
	.slider-info ul > li {margin: 0 10px;}
	
	.sect-guide {margin: 5px 0; border-bottom: 1px solid black;}
	.sect-guide span {padding: 2px; margin-right: 5px;}
	
	.col-times {margin: 50px 20px 0 0; border-bottom: 2px solid black;}
	.col-times img {width: 35px;}
	.col-times.subject {font-size: 20px; font-weight: bolder; margin-right: 5px;}
	.col-times em {border: 2px solid blue; padding: 2px; margin: 0 10px;}
	.col-times.info {font-size: 13px; color: gray;}
	
	.col-times .col-schedule {margin-top: 10px;}
	.col-times .col-schedule span {margin-left: 5px;}
	.col-times .col-schedule ul {display: flex; margin: 20px 0;}
	.col-times .col-schedule ul > li {padding: 2px; border: 1px solid gray;}
	
  </style>
</head>
<body>
	 <%@ include file="header2.jsp" %>
  <div class="main">
    <div class="container">
      <div class="select-theater">
        <div class="favorite-wrap">
          <div class="select-favorite">
            <h4><img src="resources/img/theater/h4_favorite_cgv.png" alt=""></h4>
            <ul id="favorite-theaters">
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
            </ul>
            <i class="bi bi-plus-square-fill"></i>
          </div>
          <div class="select-city">
            <div class="city-list">
              <ul>
                <li>
                  <a class="city" href="#">서울</a>
                </li>
                <li>
                  <a class="city" href="#">경기</a>
                </li>
                <li>
                  <a class="city" href="#">인천</a>
                </li>
                <li>
                  <a class="city" href="#">강원</a>
                </li>
                <li>
                  <a class="city" href="#">대전/충청</a>
                </li>
                <li>
                  <a class="city" href="#">대구</a>
                </li>
                <li>
                  <a class="city" href="#">부산/울산</a>
                </li>
                <li>
                  <a class="city" href="#">경상</a>
                </li>
                <li>
                  <a class="city" href="#">광주/전라/제주</a>
                </li>
              </ul>
            </div> <!-- city-list -->
            <div class="area">
            </div> <!-- area -->
          </div> <!-- select-city -->
        </div> <!-- favorite-wrap -->
      </div> <!-- select-theater -->
      <div class="wrap-theater">
      	<h3><img alt="theater" src="resources/img/theater/h3_theater.gif"></h3>
      	<span>&nbsp;</span>
      	<div class="sect-theater">
      		<h4><span><%=theaterName == null ? ' ': theaterName %></span></h4>
      		<a href="http://www.cgv.co.kr/support/lease/default.aspx"><span>단체/대관문의</span></a>
      	</div>
      	<span>&nbsp;</span>	
      	<div class="wrap-theaterinfo">
      		<img src="resources/img/theater/theaterMain.jpg" width="100%">
      	</div>
      	<div class="theater-ad">
      		<img src="resources/img/theater/theater_ad.gif" width="100%">
      	</div>
      	<div class="tab-menu">
      		<ul>
      			<li class="on">상영시간표  |  </li>
      			<li>위치/주차안내</li>
      		</ul>
      	</div>
      	<div class="cols-content">
      		<div class="col-detail">
      			<div class="showtimes-wrap">
      				<div class="sect-schedule">
      					<div class="slider">
      						<button type="button" onclick="nextDay()"><img src="resources/img/theater/leftButton.png"></button>
      						<div class="item-wrap">
      						
      						</div>
      						<button type="button" onclick="nextDay()"><img src="resources/img/theater/rightButton.png"></button>
      					</div>
      					<div class="slider-info">
      						<ul>
      							<li><img src="resources/img/theater/playButton.png" width="20px">관람가격 안내</li>
      							<li><img src="resources/img/theater/playButton.png" width="20px">관람등급 안내</li>
      						</ul>
      					</div>
      				</div>
      				<div class="sect-guide">
      					<span><img src="resources/img/theater/sun.png" width="20px">모닝</span>
      					<span><img src="resources/img/theater/moon.png" width="20px">심야</span>
      					<span>** 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</span>
      				</div>
      				<div class="sect-showtimes">
      				</div>
      			</div>
      		</div>
      		<div class="col-aside">
      			<img src="resources/img/theater/ad1.jpg">
      			<img src="resources/img/theater/ad2.png">
      		</div>
      	</div>
      </div> <!-- wrap-theater -->
    </div> <!-- container -->
  </div> <!-- main -->

<span>&nbsp</span>
<span>&nbsp</span>



  <script src="resources/js/HttpRequest.js"></script>
  <script>
  	
  
    let question = document.getElementsByClassName("city");

    for (let i = 0; i < question.length; i++) {
      question[i].addEventListener("click", function () {
        var name = event.target.textContent;
        sendName(name);
      });
    }
    
    function sendName(area){
    	
    	var url = "selectCity"
    	//var param = "area="+encodeURIComponent(area);
    		var param = "area="+area;
    	
    	sendRequest(url, param, resultFn, "POST");
    }
    
    function resultFn(){
    	if(xhr.readyState == 4 && xhr.status == 200){
    		var theaters = JSON.parse(xhr.responseText);
    		
    		var div = document.querySelector('.area');
    		var ul = document.createElement("ul");
    		div.textContent = '';
    		
    		theaters.forEach(function(theater) {
    			var li = document.createElement("li");
    			var a = document.createElement("a");
    			
    			a.textContent = theater.theater_name;
    			a.href = 'theater?idx='+theater.idx+'&name='+theater.theater_name;
    			
    			li.appendChild(a);
    			ul.appendChild(li);
            });
    		
    		div.appendChild(ul);
    	}
    }
    
    function nextDay() {
    	var noDiv = document.querySelector('.item-wrap .week.none');
        var BlDiv = document.querySelector('.item-wrap .week:not(.none)');
    	
    	noDiv.classList.remove('none');
    	BlDiv.classList.add('none');
    	
    }
    
    function ajaxMovie(idx, date) {
    	
    	//date="2024-02-29";
    	var url="select_date_movie";
        var param="idx="+idx+"&date="+date;

		console.log("첫번째출발" + param);
        sendRequest(url, param, movieResult, "POST");

    }
    

    function movieResult() {
        if (xhr.readyState == 4 && xhr.status == 200) {
			//console.log("첫번쨰 도착");
            var list = xhr.responseText;
            var json = JSON.parse(list);
            var div = document.querySelector(".sect-showtimes");
            var ul = document.createElement("ul");
			//console.log(json.length);

            // 사용자 정의 콜백 함수를 이용하여 비동기적으로 처리
            function processMovie(index) {
                if (index < json.length) {
                    var item = json[index];
                    var tIdx = item.theater_idx;
                    var date = item.movie_date;
                    var movieIdx = item.movie_idx;
                    var li = document.createElement("li");

                    // 비동기적으로 스케줄을 가져와서 각 li에 추가
                    ajaxSchedule(li, tIdx, movieIdx, date, function (colDiv) {
                        li.appendChild(colDiv); // 스케줄이 완료된 후에 li에 colDiv를 추가
                        ul.appendChild(li);

                        // 다음 영화에 대한 처리
                        processMovie(index + 1);
                    });
                } else {

                    div.innerHTML = ''; // div 초기화
                    div.appendChild(ul);
                }
            }

            // 첫 번째 영화에 대한 처리 시작
            processMovie(0);
        } // if문 종료
    } // movieResult 종료

    // 해당 영화리스트의 시간 스케쥴을 가져오는 함수
    function ajaxSchedule(li, idx, movie, date, callback) {
        var url = "select_schedule";
        var paramSchedule = "idx=" + idx + "&date=" + date + "&subject=" + movie;
        
        //console.log("두번째 출발: "+paramSchedule);

        sendRequest(url, paramSchedule, function () {
            scheduleResult(callback);
        }, "POST");
    }

    // 영화리스트의 시간 스케쥴을 가져오는 ajax 콜백함수
    function scheduleResult(callback) {

        if (xhr.readyState == 4 && xhr.status == 200) {
        	console.log("두번쨰 도착");
            var list = xhr.responseText;
            var json = JSON.parse(list);
            var colDiv = document.createElement("div"); //영화전체리스트div
            var colDiv2 = document.createElement("div"); //영화 스케쥴 div
            var ul = document.createElement("ul");
            colDiv.classList.add('col-times'); // 클래스 추가
            colDiv2.classList.add('col-schedule');

            var subjectSpan = document.createElement("span");
            var subjectImg = document.createElement("img");
            var subjectEm = document.createElement("em");
            var subjectInfoSpan = document.createElement("span");
            
            var date = json[0].open_date.split(' ')[0]
            
            subjectImg.src = 'resources/img/age'+json[0].age+'.PNG';
            subjectSpan.textContent = json[0].subject;
            subjectSpan.classList.add("subject");
            subjectEm.textContent = '상영중';
            subjectInfoSpan.textContent = json[0].category +'/ '+json[0].runtime+'분/ '+ date + '  개봉';
            subjectInfoSpan.classList.add("info")
            
            var ScheduleInfoSpan = document.createElement("span");
            ScheduleInfoSpan.textContent = '▶ 2D | ' + json[0].location

            json.forEach(function (item) {
                var li = document.createElement('li');
                li.textContent = item.movie_start;
                li.setAttribute("onclick","location.href='movie_schedule'");
                ul.appendChild(li);
            });
            
            colDiv2.appendChild(ScheduleInfoSpan);
            colDiv2.appendChild(ul);
            colDiv.appendChild(subjectImg);
            colDiv.appendChild(subjectSpan);
            colDiv.appendChild(subjectEm);
            colDiv.appendChild(subjectInfoSpan);
            colDiv.appendChild(colDiv2);

			
            callback(colDiv); // 콜백 함수 호출하여 결과 반환
        } // if문 종료
    } // scheduleResult 종료
    
    //2025년2월5일 >> 날짜를 고정으로 되게끔 수정.
    /*
    document.addEventListener("DOMContentLoaded", function() {

        // 오늘 날짜 가져오기
        var today = new Date();
        //var today = new Date(day);
        //var todayMonth = (today.getMonth()+1) < 10 ? '0' + (today.getMonth()+1) : (today.getMonth()+1);
        //var todayDay = today.getDate() < 10 ? '0' + today.getDate() : today.getDate();
        var todayMonth = '02';
        var todayDay = '23';
        var formatToday = '2024-' +todayMonth+'-'+todayDay; 

        // div 요소
        var itemWrap = document.querySelector('.item-wrap');
        var currentDate = new Date(today);
        
        for (var i = 0; i < 2; i++) {
            var ul = document.createElement('ul');
            ul.classList.add('week');
            if( i == 1 ){
            	ul.classList.add('none');
            }
            
            //1-set 당 8일
            for (var j = 0; j < 8; j++) {
                var li = document.createElement('li');
                var a = document.createElement('a');
                var mspan = document.createElement('span');
                var dspan = document.createElement('strong');
                
                var month = (currentDate.getMonth()+1) < 10 ? '0' + (currentDate.getMonth()+1) : (currentDate.getMonth()+1);
                var day = currentDate.getDate() < 10 ? '0' + currentDate.getDate() : currentDate.getDate();
                var date = '2024-' +month+'-'+day; 
                
                var urlParams = new URLSearchParams(window.location.search);
                var theater_idx = urlParams.get('idx');
                var theater_name = urlParams.get('name');
                
                li.classList.add('day');
                li.setAttribute("id",date);
                
                //a.href='theater?idx='+theater_idx+'&name='+theater_name+'&date='+date;
                
                mspan.textContent = (currentDate.getMonth() + 1)+"월";
                dspan.textContent = currentDate.getDate();

                
                li.appendChild(mspan);
                li.appendChild(dspan);
                //li.appendChild(a);
                
                // 오늘인 경우 클래스 추가
                if (currentDate.toDateString() === today.toDateString()) {
                    li.classList.add('on');
                }
                
                ul.appendChild(li);
                
                // 다음 날로 이동
                currentDate.setDate(currentDate.getDate() + 1);
            } //j for종료

            itemWrap.appendChild(ul);
        }; //i for종료
        
        
        //달력 누르면 해당 날짜 선택
        var days = document.querySelectorAll('.item-wrap .day');
        
        days.forEach(function(d) {
            d.addEventListener('click', function() {

                days.forEach(function(element) {
                    element.classList.remove('on');
                });

                d.classList.add('on');
                
                var urlParams = new URLSearchParams(window.location.search);
                var theater_idx = urlParams.get('idx');
                console.log(d.id);
                console.log(${theater_idx});
                ajaxMovie(${theater_idx}, d.id);
            });
        });
        
        
        //화면 켜자마자 default 강남cgv 리스트 가져오기
        ajaxMovie(${theater_idx},formatToday);

    }); //document.addEventListener
    */
    
    document.addEventListener("DOMContentLoaded", function () {
        // 시작 날짜를 2024년 2월 23일로 설정
        var currentDate = new Date("2024-02-23");

        // div 요소
        var itemWrap = document.querySelector('.item-wrap');

        for (var i = 0; i < 2; i++) {
            var ul = document.createElement('ul');
            ul.classList.add('week');
            if (i == 1) {
                ul.classList.add('none');
            }

            // 1-set 당 8일 (총 16일)
            for (var j = 0; j < 8; j++) {
                var li = document.createElement('li');
                var a = document.createElement('a');
                var mspan = document.createElement('span');
                var dspan = document.createElement('strong');

                var month = (currentDate.getMonth() + 1).toString().padStart(2, '0');
                var day = currentDate.getDate().toString().padStart(2, '0');
                var date = '2024-' +month+'-'+day; 

                var urlParams = new URLSearchParams(window.location.search);
                var theater_idx = urlParams.get('idx');
                var theater_name = urlParams.get('name');

                li.classList.add('day');
                li.setAttribute("id", date);

                mspan.textContent = `${currentDate.getMonth() + 1}월`;
                dspan.textContent = currentDate.getDate();

                li.appendChild(mspan);
                li.appendChild(dspan);

                ul.appendChild(li);

                // 다음 날짜로 이동
                currentDate.setDate(currentDate.getDate() + 1);
            } // j for 종료

            itemWrap.appendChild(ul);
        } // i for 종료

        // 날짜 선택 이벤트 리스너 추가
        var days = document.querySelectorAll('.item-wrap .day');

        days.forEach(function (d) {
            d.addEventListener('click', function () {
                days.forEach(function (element) {
                    element.classList.remove('on');
                });

                d.classList.add('on');

                var urlParams = new URLSearchParams(window.location.search);
                var theater_idx = urlParams.get('idx');
                console.log(d.id);
                console.log(theater_idx);
                ajaxMovie(theater_idx, d.id);
            });
        });

        // 기본 날짜(2024-02-23)로 영화 리스트 가져오기
        ajaxMovie(urlParams.get('idx'), "2024-02-23");
    }); // document.addEventListener 종료
    
    

  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>