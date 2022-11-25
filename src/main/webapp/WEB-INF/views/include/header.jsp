<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="x-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>홍루이젠</title>
</head>
<body>

    <!-- Start Top Bar -->
    <div class="top-bar">
		<div class="top-bar-left">
		    <ul class="dropdown menu" data-dropdown-menu>
		      <li>
		        <a href="#Item-1">브랜드소개</a>
		        <ul class="menu">
		          <li><a href="#Item-1A">브랜드소개</a></li>
		          <li><a href="#Item-1B">브랜드철학</a></li>
		        </ul>
		      </li>
		      <li><a href="#Item-2">브랜드관</a></li>
		      <li>
		        <a href="#Item-3">메뉴</a>
		        <ul class="menu">
		          <li><a href="#Item-3A">신제품</a></li>
		          <li><a href="#Item-3B">Item 3B</a></li>
		        </ul>
		      </li>
		      <li><a href="#Item-4">매장안내</a></li>
		      <li>
		        <a href="#Item-5">커뮤니티</a>
		        <ul class="menu">
		          <li><a href="#Item-5A">공지사항</a></li>
		          <li><a href="#Item-5B">QNA</a></li>
		        </ul>
		      </li>
		    </ul>
		  </div>
		<div class="top-bar-right">
        <ul class="menu">
          <li><a href="#">로그인</a></li>
          <li><a href="#">회원가입</a></li>
        </ul>
      </div>
    </div>
    <!-- End Top Bar -->


    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
