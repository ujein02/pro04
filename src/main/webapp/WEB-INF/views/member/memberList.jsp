<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원목록</title>
	<jsp:include page="../include/head.jsp"/>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
   
     <div class="row column text-center">
      <h2>회원 목록</h2>
      <hr>
      <table>
      	<thead>
      		<tr>
      			<th width="80">No</th>
      			<th width="100">ID</th>
      			<th width="100">NAME</th>
      			<th>RegDate</th>
      			<th>Point</th>
      		</tr>
      	</thead>
      	<tbody>
      	<c:forEach items="${memberList }" var="mem" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td>${mem.id }</td>
      			<td>${mem.name }</td>
      			<td>${mem.regdate }</td>
      			<td>${mem.pt }</td>
      		</tr>
      	</c:forEach>	
      	</tbody>
      </table>
    </div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>