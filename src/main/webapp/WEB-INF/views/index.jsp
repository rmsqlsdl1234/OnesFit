<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<script>
	$(function() {
		$("#notice").on("click", function() {
			location.href = "/notice/notice_list?page=1";
		})
	})
</script>
</head>
<body>
	<input type="button" id="notice" value="공지게시판">
</body>
</html>