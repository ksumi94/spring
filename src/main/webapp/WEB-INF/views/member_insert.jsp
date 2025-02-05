<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/js/HttpRequest.js"></script>
<script type="text/javascript">


	let b_idCheck = false;
	
	function id_check() {
		let id = document.getElementById("id").value;
		
		if(id == ''){
			alert('아이디를 입력해 주세요')
			return;
			
		}
		
	
		let url = "id_check"
		let param = "id="+id;
		
		sendRequest(url, param, resultFn,"POST");
		
		
		
	}
	
	function resultFn() {
		
		if(xhr.readyState == 4 && xhr.status == 200){
			var data = xhr.responseText;
			var json = (new Function('return' +data))();
			
			if(json[0].res == 'yes'){
				alert('사용 가능한 아이디 입니다')
				b_idCheck = true;
			}else{
				alert('중복된 아이디 입니다')
				return;
			}
		}
	}
	
	
	function che() {
		b_idCheck = false;
	}
	

	function send(f) {
		
		//유효성검사
		let m_id = f.m_id.value.trim();
		let m_pwd = f.m_pwd.value.trim();
		let m_name = f.m_name.value.trim();
		let m_email = f.m_email.value.trim();
		let m_tel = f.m_tel.value.trim();
		
		
		
		if(m_id == ''){
			alert('아이디를 입력하세요')
			return;
		}
		
		if(m_pwd == ''){
			alert('비밀번호를 입력하세요')
			return;
		}
		
		if(m_name == ''){
			alert('이름을 입력하세요')
			return;
		}


		if(m_email == ''){
			alert('email을 입력하세요')
			return;
		}
		
		
		if(m_tel == ''){
			alert('전화번호를 입력하세요')
			return;
		}
		
		f.action = "member_insert_db";
		f.method = "POST";
		f.submit();
		
		
	}





	function check_pwd(){
		
		
		var pw = document.getElementById('pwd').value;
		
	    if(document.getElementById('pwd').value !='' && document.getElementById('pwd2').value!=''){
	        if(document.getElementById('pwd').value==document.getElementById('pwd2').value){
	            document.getElementById('check').innerHTML='비밀번호가 일치합니다.';
	            document.getElementById('check').style.color='green';
	        }
	        else{
	            document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
	            document.getElementById('check').style.color='red';
	        }
	
	    }
		
	}

</script>






<style type="text/css">

	*{font-family: 'Noto Sans KR', sans-serif;}

	.s-card{border-bottom-right-radius: 20px;
    	    border-top-right-radius: 20px;}
    	    
    .table {position: relative;
			bottom: 50%;}
    	    
    	    
    #formTable{margin-bottom: 20px;}

	.hi{font: "Noto sans KR";
		color: #666666;
		margin-top: 50px;
	    text-align: center;}

	#title{font: "Noto sans KR";
		   color: #666666;
		   margin-right: 40px;
		   text-align: center;}
	
	.form-group input{width: 40px;
					  height: 70px;
					  }
					  
	.table {position: relative;
		    
			bottom: 50%;}

	.signUpBtn{width: 100px;}


	.btn-up{background-color: blue;
    		   width: 100%;
    		   height: 40px;
    		   color: #fff;
    		   cursor : pointer;
    		   border: none;
    		   border-radius: 6px;
    		   }

	.btn-up:hover {background-color: #E040FB;
    				 color: #fff;
    				 cursor: pointer;}

	#idcheck{border: none;
			 border-radius: 6px;
			 color: white;
			 background-color: blue;
			 cursor : pointer;
			 }
			 
	#idcheck:hover {background-color: #E040FB;
    				 color: #fff;
    				 cursor: pointer;}


	::placeholder{color: blue;}

	.form-control{padding: 10px 12px 10px 12px;
    			  border: 1px solid lightgrey;
    			  border-radius: 10px;
    			  margin-bottom: 5px;
    			  margin-top: 10px;
   		 		  width: 100%;
    			  height : 40px;
    			  box-sizing: border-box;
    			  color: #2C3E50;
    			  font-size: 14px;
    			  letter-spacing: 1px;}
    			  
    #check{font: 10px;}
    	   


</style>


</head>
<body>

<div class="signup-w">

  <div class="signup">
  
   <div class="s-card">
  
    <h2 class="hi">KOREA MOVIE 회원가입</h2>
    
      <div class="registration">
    
		<form id="formTable">
		
			<table class="table table-borderless" align="center" >
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">아이디</h5></td>
					<td><input type="text" name="m_id" id="id" onchange="check_id()" class="form-control"
							   pattern="^[a-z][a-z\d]{4,15}$" placeholder="영문/숫자  15자 이내" required>
						<input type="button" value="아이디 중복체크" id="idcheck" onclick="id_check()"></td>
				</div>
			</tr>
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">이름</h5></td>
					<td><input type="text" name="m_name" id="name" class="form-control" pattern="^[가-힣]{2,6}$"  required></td>
				</div>
			</tr>
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">비밀번호</h5></td>
					<td><input type="password" name="m_pwd" id="pwd" onchange="check_pwd()" class="form-control"
							   pattern="(?=.*\d{1,10})(?=.*[~`!@#$%\^&*()-+=]{1,10})(?=.*[a-zA-Z]{2,10}).{8,20}$"
							   placeholder="영문+숫자+특수문자 20자 이내 " required></td>
				</div>
			</tr>
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">비밀번호 확인</h5></td>
					<td><input type="password" name="m_pwd_ok" id="pwd2" onchange="check_pwd()" class="form-control"
							   pattern="(?=.*\d{1,10})(?=.*[~`!@#$%\^&*()-+=]{1,10})(?=.*[a-zA-Z]{2,10}).{8,20}$"
							   required>&nbsp;<span id="check"></span></td>
				</div>
			</tr>
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">이메일</h5></td>
					<<td><input type="email" name="m_email" class="form-control"
							    pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$" required></td>
				</div>
			</tr>
			
			<tr>
				<div class="form-group">
					<td><h5 id="title">전화번호</h5></td>
					<td><input type="text" name="m_tel" id="tel" class="form-control" required></td>
				</div>
			</tr>
			
			
			
			<div class="row-hi">
			
				<div class="signupBtn">
				
					<td></td>
					<td align="center"><button class="btn-up" onclick="send(this.form)">회원 가입</button></td>
				
				</div>
			
			</div>
				

		</form>
    
	</div>
    
    </div>
  
  </div>

</div>

</body>
</html>
