<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
	<jsp:include page="../include/head.jsp"/>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
<header id="header">
<jsp:include page="../include/header.jsp"/>
</header>
<div class="content" id="content">
      <h2>공지사항 목록</h2>
      <hr>
      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th width="80">No</th>
		      			<th>Title</th>
		      			<th width="120">RegDate</th>
		      			<th width="100">Visited</th>
		      		</tr>
		      	</thead>
		      	<tbody>
		      	<c:forEach items="${boardList }" var="board" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="/board/detail.do?seq=${board.seq }">${board.title }</a></td>
		      			<td>
	      					<fmt:parseDate value="${board.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${board.visited }</td>
		      		</tr>
		      	</c:forEach>	
		      	</tbody>
		      </table>
			      	   
		      	<div class="button-group">
				  <a class="button" href="${path2 }/board/insert.do">글쓰기</a>
				</div>
			
	      </div>

	    </div>
	
    <footer id="footer" class="footer-nav row expanded collapse">
	</footer>
</body>
</html>