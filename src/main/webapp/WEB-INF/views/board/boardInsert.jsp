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
	<title>공지사항 등록</title>
	<jsp:include page="../include/head.jsp"/>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
<jsp:include page="../include/header.jsp"/>
<div class="row column text-center">
      <h2>공지사항 등록</h2>
      <hr>
      <form action="${path1 }/board/insert.do" method="post">
	      <table>
	      	<tbody>
	      		<tr>
	      			<th>제목</th>
	      			<td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" required /></td>
	      			<th>내용</th>
	      			<td><textarea rows="8" cols="150" name="content" id="content" class="textarea" required></textarea></td>
	      		</tr>
	      	</tbody>
	      </table>
	      <div class="primary button-group">
			  <button type="submit" class="button">등록</button>
			  <button type="reset" class="button">취소</button>
			  <a href="${path1 }/board/list.do" class="button">목록</a>
			  <a class="button">Stronger</a>
			</div>
	     </form>
    </div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>