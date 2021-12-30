<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 추가</title>
</head>
<body>

<div class="container">

	<h1>회원정보 추가</h1>
	<form method="post" action="">
	
		<label>이름 : </label><input type="text" class="form-control" name="name">
		<label>생년월일 : </label><input type="text" class="form-control" name="yyyymmdd">
		<label>자기소개 : </label>
		<textarea rows="10" cols="5" class="form-control" name ="introduce"></textarea>
		<label>이메일 : </label><input type="text" class="form-control" name="email">
		
		<input type="submit" value="추가 " class="btn btn-success"></input>
	</form>

</div>

</body>
</html>