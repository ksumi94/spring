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


	function send() {
		
		var o_pwd = f.o_pwd.value.trim();
		var pwd = f.pwd.value.trim();
		
		if(pwd != o_pwd){
			alert('비밀번호 불일치');
			return;
		}
		
		f.action = "modify";
		f.method ="post";
		f.submit();
	}


	function removeMember() {
		
		if(!confirm("탈퇴하시겠습니까?")){
			return;
		}
	
		let m_pwd = ${dto.m_pwd}; //원본비밀번호
		let a_pwd = document.getElementById("a_pwd").value;
		
		if(m_pwd != a_pwd){
			alert('비밀번호 불일치');
			return;
		}
		
		
		var url = "delete";
		var param="idx=${dto.u_idx}";
		
		sendRequest(url, param, delCheck, "POST");
	}
	
	
	function  delCheck(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var data = xhr.responseText;
			
			var json = (new Function('return' + data))();
			
			if(json[0].result == 'yes'){
				alert('탈퇴성공');
				location.href="ticket_main";
				
			}else{
				alert('탈퇴실패');
			}
			
		}
	
	}


</script>


<style type="text/css">

	*{font-family: 'Noto Sans KR', sans-serif;}
	
	.rhi{color: #666666;
		 margin-top: 50px;
	     text-align: center;}
	
	.modify-in{border-bottom-right-radius: 20px;
    	       border-top-right-radius: 20px;}
    	       
    .table {position: relative;
			bottom: 50%;}
			
	#title{font: "Noto sans KR";
		   color: #666666;
		   margin-right: 40px;
		   text-align: center;}
    	       
		  
	.formT{padding: 10px 12px 10px 12px;
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




</style>





</head>
<body>

<%-- <%@ include file="header.jsp" %> --%>
<div class="mo-w">
	<h2 class="rhi">회원 정보 수정</h2>
	
	<div class="modify-in">
		<form id="modiform" action="#" method="post">
			<table class="table table-borderless" align="center" >
			
				<tr>
					<td><h5 id="title2">아이디</h5></td>
					<td><input type="text" id="id" name="m_id" value="${dto.m_id}" class="formT" readonly></td>
				</tr>
				
				<tr>
					<td><h5 id="title2">이름</h5></td>
					<td><input type="text" id="name" name="m_name" value="${dto.m_name}" class="formT" readonly></td>
				</tr>
				
				<tr>
					<td><h5 id="title2">비밀번호</h5></td>
					<td><input type="password" id="o_pwd" name="m_pwd" value="${dto.m_pwd}" class="formT"></td>
				</tr>
				
				<tr>
					<td><h5 id="title2">이메일</h5></td>
					<td><input type="text" id="email" name="m_email" value="${dto.m_email}" class="formT"></td>
				</tr>
				
				<tr>
					<td><h5 id="title2">전화번호</h5></td>
					<td><input type="text" id="tel" name="m_tel" value="${dto.m_tel}" class="formT"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
					<input type="hidden" value="${dto.u_idx}" name="idx">
					<button type="submit" onclick="send(this.form)">회원 정보 수정</button>
					<button type="button" onclick="removeMember();">회원 탈퇴</button>
					</td>
				</tr>
				
				
				

				
			</table>
		</form>
	</div>
</div>



</body>
</html>