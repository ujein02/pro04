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
	<title>공지사항 글 보기</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/header.jsp"/>
    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <button class="orbit-previous" aria-label="previous"><span class="show-for-sr">Previous Slide</span>&#9664;</button>
        <button class="orbit-next" aria-label="next"><span class="show-for-sr">Next Slide</span>&#9654;</button>
        <li class="orbit-slide is-active">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
      </ul>
    </div>

    <div class="row column text-center">
      <h2>공지사항 상세 보기</h2>
      <hr>
      <table>
      	<tbody>

      		<tr>
      			<th>글 번호</th>
      			<td>${dto.seq }</td>
      		</tr>	
      		<tr>
      			<th>글 제목</th>
      			<td>${dto.title }</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td><p>${dto.content }</p></td>
      		</tr>
      		<tr>
      			<th>작성자</th>
      			<td>${dto.nickname }</td>
      		</tr>
      		<tr>
      			<th>작성일시</th>
      			<td>${dto.regdate }</td>
      		</tr>
      		<tr>
      			<th>읽은 횟수</th>
      			<td>${dto.visited }</td>
      		</tr>
      	</tbody>
      </table>
      			<div class="button-group">
				  <a class="button" href="${path1 }/board/list.do">글 목록</a>
				  <a class="button" href="${path1 }/board/delete.do?seq=${dto.seq}">글 삭제</a>
				  <a class="button" href="${path1 }/board/edit.do?seq=${dto.seq}">글 수정</a>
				</div>
    </div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>