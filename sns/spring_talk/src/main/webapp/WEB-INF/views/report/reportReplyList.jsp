<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	 <div class="container">
			<h1>댓글 신고 목록</h1>
			<table boarder="1" class="table table-hover">
		      <thead>
		       <tr>
		          <th>댓글 신고번호</th>
		          <th>신고자</th>
		          <th>신고 사유</th>
		        </tr>
		      </thead>
		      <tbody>
		        <c:forEach var="reply" items="${replyList }">
		          <tr>
		            <td>${reply.report_reply_num }</td>
		            <td>${reply.report_id }</td>
		            <td>${reply.report_reason }</td>						
		          </tr>
		        </c:forEach>
		      </tbody>
		    </table>
		    <a href="/report/post" class="btn btn-warning">댓글 신고하기</a><br/>
 	 </div>
</body>
</html>