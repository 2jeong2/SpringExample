<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<h1>회원 정보 추가 </h1>
	<form method="post" action="/lesson06/ex01/add_user" id="joinForm">
		<label>이름</label> <input type="text" name="name" id="nameInput" > <button type="button" id="duplicateBtn">중복확인 </button> <br>
		<label>생년월일</label> <input type="text" name="yyyymmdd" id="yyyymmddInput"> <br>
		<label>자기소개</label> <br>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea> <br>
		<label>이메일 주소:</label> <input type="text" name="email" id="emailInput"> <br>
		<!-- <button type="submit" id="submitBtn">추가</button> --> 
		<button type="button" id="addBtn">추가</button>
	</form>
	
	<script>
		$(document).ready(function(){
			var isDuplicateName = true;
			
			
			
			$("#addBtn").on("click", function() {
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return ;
				}
				
				// 중복체크 유효성 검사
				
				
				
				if(yyyymmdd == "") {
					alert("생일을 입력하세요");
					return ;
				}
				if(introduce == "") {
					alert("자기소개를 입력하세요");
					return ;
				}
				
				if(email == "") {
					alert("이메일을 입력하세요");
					return ;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data) {
						if(data == "success") {
							alert("입력성공");
						} else {
							alert("입력 실패");
						}
					},
					error:function() {
						alert("에러발생");
					}
					
				});
				
			});
				
				
		});
	
	</script>

</body>
</html>