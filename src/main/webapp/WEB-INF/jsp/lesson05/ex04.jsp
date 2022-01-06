<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>JSTL fn 라이브러리</title>
</head>
<body>

	<c:set var="str1" value="No pai. No gain."/>
	
	<h3>문자열 길이</h3>
	${fn:length(str1) }
	
	<h3>특정 문자열이 존재하는지?</h3>
	No가 존재하는가? ${fn:contains(str1,"No") }<br>
	no가 존재하는가? ${fn:contains(str1,"no") }<br>
	
	대소 구분 없이 no검색 ${fn:containsIgnoreCase(str1,"no")}<br>
	
	<c:if test="${fn:containsIgnoreCase(str1,'no')}">
		문장에 no라는 문자열이 존재 합니다. : 대소문자 구분 없이
	</c:if>
	
	<h3>특정문자열로 시작하거나 끝나는지</h3>
	No로 시작하는가: ${fn:startsWith(str1,"No") }<br>
	gain.으로 끝나는지 : ${fn:endsWith(str1,"gain.") }
	
	<h3>문자열 치환</h3>
	<c:set var="str2" value="I love chicken"/>
	${str2 }<br>
	${fn:replace(str2, "chicken","bread") }
	
	<h3>문자열 쪼개기</h3>
	${fn:split(str2, " ")[0] }
	${fn:split(str2, " ")[2] }
	<br>
	
	<h3>문자열 자르기</h3><br>
	${fn:substring(str2,2,6) }	<br>

	<h3>대소문자 변경</h3>
	모두 대문자로 : ${fn:toUpperCase(str2) }
	모두 소문자로 : ${fn:toLowerCase(str2) }
	
	<h3>앞 뒤 공백 제거</h3>
	<c:set var="str3" value="            hello World          "/>
	<pre>${str3 }</pre>
	<pre>${fn:trim(str3) }</pre>
	
	
	

</body>
</html>