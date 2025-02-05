<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/js/HttpRequest.js"></script>
<script type="text/javascript">
	
	
	function send(f) {
		var id = f.id.value.trim();
		var pwd = f.pwd.value.trim();
				
				if(id == ''){
					alert('아이디를 입력해 주세요');
					return
				}
				
				if(pwd == ''){
					alert('비밀번호를 입력해 주세요');
					return
				}
		
			var url = "login";
			var param = "id="+id+"&pwd="+encodeURIComponent(pwd);
			
			sendRequest(url, param, myCheck,"POST");
			
		
		
	}
	
	
	function myCheck() {
		if(xhr.readyState == 4 && xhr.status == 200){
			console.log("콜백 들어옴")
			var data = xhr.responseText;
			var json = (new Function('return' +data))();
			
			if(json[0].param == 'no_id'){
				alert('아이디가 존재하지 않습니다');
			}else if(json[0].param == 'no_pwd'){
				alert('비밀번호가 틀립니다');
			}else{
				alert('로그인 성공')
				location.href = 'movie_home';
			}
		}
	}
	
	
	
	function changecolor(e) {
		var btns = document.querySelectorAll(".hiddenbutton");
		btns.forEach(function(btn, i) {
			if(e.currentTarget == btn) {
				btn.classList.add("active");
			}
			else {
				btn.classList.remove("active");
			}
		});
		console.log( e.currentTarget );
	}

	
	
	
	
	
	
	//네이버 로그인 연동 설정
	function getNaverLoginURL() {
		var menutype = "login";
        var currentURL = "https://www.cgv.co.kr/default.aspx";
        currentURL.replace("http:", "https:");

		var auth = "naver";

		var apiURL = "https://www.cgv.co.kr/user/login/authorize.aspx?authtype="
			+ auth + "&redirect_uri=" + currentURL + "&menutype=" + menutype;
	
		location.href = apiURL;
	}
	
	
	</script>



<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

#content>li>a>img {
	width: 30%;
}

ul, li {
	list-style: none;
}

#main a {
	text-decoration: none;
	color: #6E6E6E;
}

#container {
	width: 100%;
}

#header {
	width: 1200px;
	height: 100px;
	margin: 0 auto;
	padding: 30px 0 0 0;
	box-sizing: border-box;
}

#main {
	float: left;
}

#content {
	float: right;
}

#content>li {
	float: left;
	display: inline-block;
	position: relative;
}

#content>li>a {
	display: block;
	position: relative;
	padding-bottom: 19px;
	width: 100px;
	color: #6E6E6E;
	font-weight: bold;
	text-align: center;
	padding: 0 0 20px 0;
	box-sizing: border-box;
}

#content>li>img {
	width: 30px;
	height: 30px;
}

#content>li>a>span {
	position: absolute;
	bottom: 0;
	left: 50%;
	line-height: 1.462em;
	white-space: nowrap;
	transform: translate(-50%, 0);
}

.sect-login {
	width: 541px;
	height: 335px;
	margin: auto;
	margin-top: 90px;
}

.tab-menu-round {
	display: flex;
	width: 541px;
	height: 30px;
}

li, ul, ol {
	list-style: none;
}

.tab-menu-round li {
	margin-right: 10px;
}

a {
	text-decoration: none;
}

.hiddenbutton {
	color: white;
	font: 13px "Noto sans KR";
	border: none;
	border-bottom: none;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	background-color: #666666;
	padding: 10px 20px;
	margin: 0px 0px 0px 0px;
}

.hiddenbutton:hover, .hiddenbutton.active {
	background: red;
}

.box-login {
	width: 541px;
	height: 298px;
	font: 13px "Noto sans KR";
	border: 2px solid #666666;
	border-left: 0px;
	border-right: 0px;
	padding: 30px 0px 0px 132px;
	box-sizing: border-box;
}

.box-login .hidden {
	
}

.box-login fieldset {
	width: 409;
	height: 160.59px;
	border: none;
	box-sizing: border-box;
}

.box-login legend {
	position: absolute;
	left: -990em;
}

.box-login form {
	width: 409px;
	height: 160.59px;
	box-sizing: border-box;
}

.login {
	display: flex;
	flex-direction: column;
	width: 409px;
	height: 83px;
	margin: 15px 0px 0px;
}

p {
	width: 409px;
	height: 15.59px;
	font: 13px "Noto sans KR";
	color: #666666;
	padding-right: 5px;
}

.login input[type="text"], input[type="password"] {
	width: 215px;
	height: 39px;
	margin: 0px 0px 5px;
	padding: 0px 5px 0px 40px;
}

.box-login button[type="submit"] {
	width: 264px;
	height: 42px;
	font: 15px "Noto sans KR";
	border: 1px double white;
	background-color: red;
	color: white;
	cursor: pointer;
	margin: 0px auto;
}

.nlogin {
	width: 409px;
	height: 77px;
}

.nlogin .btn_loginNaver {
	width: 264px;
	height: 42px;
}

.log-c .save-id {
	width: 83.45px;
	height: 19px;
	font: 11px "Noto sans KR";
	color: #666666;
	margin: 5px;
	float: left;
}

.log-c .login-option {
	width: 300px;
	height: 19px;
	font: 11px "Noto sans KR";
	color: #666666;
	margin: 5px;
	float: right;
}
</style>




</head>
<body>

	<!-- 상단바 메뉴  -->

	<div id="container">
		<div id="header">
			<h1 id="main">
				<a href="movie_home">KOREA MOVIE</a>
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



		<!-- 로그인 메뉴 -->

		<div class="sect-login">
			<ul class="tab-menu-round">
				<li><a href="#" class="hiddenbutton"
					onclick="changecolor(event)">로그인</a></li>
				<li><a href="#" class="hiddenbutton"
					onclick="changecolor(event)">비회원 예매</a></li>
				<li><a href="#" class="hiddenbutton"
					onclick="changecolor(event)">비회원 예매확인</a></li>
			</ul>

			<div class="box-login">
				<h3 class="hidden"></h3>

				<form id="form1" method="post" action="#" novalidate="novalidate"
					onsubmit="return false">

					<fieldset>

						<legend>회원 로그인</legend>
						<p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>

						<div class="login">
							<input type="text" title="아이디" id="id" name="txtUserId"
								placeholder="아이디"> <input type="password" title="패스워드"
								id="pwd" name="txtPassword" placeholder="패스워드">
						</div>

						<button type="submit" id="submit" title="로그인"
							onclick="send(this.form)">
							<span>로그인</span>
						</button>

						<div class="log-c">
							<div class="save-id">
								<input type="checkbox" id="loginSet"><label
									for="save_id">아이디 저장</label>
							</div>

							<div class="login-option">
								<a href="#">아이디 찾기 │ </a> <a href="#">비밀번호 찾기</a>
							</div>
						</div>

						<div class="nlogin">
							<a href="javascript:getNaverLoginURL();" class="btn_loginNaver"><img
								src="resources/img/btn_loginNaver.jpg" alt="네이버 로그인"></a>
						</div>

					</fieldset>

				</form>

			</div>
		</div>
	</div>

	<form name="loginform" id="loginform" method="post" action="#"
		novalidate="novalidate">
		<input type="hidden" name="id" id="id"> <input type="hidden"
			name="password" id="password"> <input type="hidden"
			name="id_save" id="id_save"> <input type="hidden"
			name="returnURL" value="#">
	</form>
</body>
</html>




