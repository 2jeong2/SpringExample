<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>fmt 라이브러리</title>
</head>
<body>

	<c:set var="number" value="12345678"/>
	<h2>출력</h2>
	<fmt:formatNumber value="${number }"/>
	<br>
	<fmt:formatNumber value="${number }" type="number"/>
	<br>
	<fmt:formatNumber value="${number }" type="number" groupingUsed="false"/>
	<br>
	
	<%--percent --%>
	<fmt:formatNumber value="1" type="percent" />
	<br>
	<%--40% --%>
	<fmt:formatNumber value="0.4" type="percent"/>
	<br>
	<%--통화 --%>
	통화(원):<fmt:formatNumber value="${number }" type="currency"/><br>
	통화(달러):<fmt:formatNumber value="${number }" type="currency" currencySymbol="$"/>
	
	
	<fmt:formatNumber value="${number }" type="currency" currencySymbol="$" var="dollar"/>
	<br>
	통화변수 출력 : ${dollar }
	<br>
	<h2>패턴</h2>
	<%--3.14 --%>
	<fmt:formatNumber value="3.14" pattern="0.0000"/>
	<br>
	<fmt:formatNumber value="3.14" pattern="#.####"/>
	<br>
	<fmt:formatNumber value="3.141592" pattern="#.####"/>
	<br>
	
	<h2>날짜</h2>
	<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>
	<fmt:formatDate value="${today }" pattern="yyyy/MM/dd hh:mm:ss초" var="dateString"/>
	<br>
	데이트 문자열 변수 : ${dateString }<br>
	
	<h2>문자열 Date 객체로 변환</h2>
	<fmt:parseDate value="${dateString }" pattern="yyyy/MM/dd hh:mm:ss" var="date"/>
	
	
	<fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일"/>
	
	
	
	
	
	
	
	
	
</body>
</html>