<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리</title>
</head>
<body>

<h2>변수 정의 하기(c:set)</h2>

<c:set var=:number1" value="100"/>

<h4>${number1 }</h4>

<c:set var=:number2" value="200"/>

<h4>${number2 }</h4>
<h4>${number2+number2 }</h4>

<h1>변수 출력하기(c:out)</h1>
<h4><c:out value="<script>alert('출력')</script>"/></h4>

</body>
</html>