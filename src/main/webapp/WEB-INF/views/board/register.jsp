<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시물 등록</title>
</head>
<body>
<h2>게시물 등록</h2>
<form action="/board/register" method="post">
    <div class="mb-3">
        <label for="title">제목 :</label>
        <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
    </div>
    <div class="mb-3">
        <label for="content">내용 :</label>
        <textarea class="form-control" rows="5" id="content" name="content"></textarea>
    </div>
    <div class="mb-3">
        <label for="writer">작성자 :</label>
        <input type="text" class="form-control" id="writer" placeholder="Enter writer" name="writer" value="${member.nickname}">
    </div>
    <div class="mb-3">
        <label class="form-date-label">작성일</label>
        <input class="form-date-input" type="date" name="postdate">
    </div>
    <button type="submit" class="btn btn-primary">전송</button>
    <button type="reset" class="btn btn-secondary">새로고침</button>
</form>
</body>
</html>