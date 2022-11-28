<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자유게시판</title>
	<jsp:include page="../include/head.jsp"/>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
<header id="header">
	<jsp:include page="../include/header.jsp"/>
</header>
     <div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">자유게시판 목록</h2>
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
		      	<c:forEach items="${freeList }" var="free" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="/free/detail.do?bno=${free.fno }">${free.title }</a></td>
		      			<td>
	      					<fmt:parseDate value="${free.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${free.visited }</td>
		      		</tr>
		      	</c:forEach>	
		      	</tbody>
		      </table>
			      	    <%-- <c:if test='${sid eq "admin"}'>  --%> 
		      	<div class="button-group">
				  <a class="button" href="${path1 }/free/insert.do">글쓰기</a>
				</div>
			<%-- </c:if> --%>
	      </div>

	    </div>
	</div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
        <footer id="footer" class="footer-nav row expanded collapse">
    	<!-- 푸터 부분 인클루드 -->
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>