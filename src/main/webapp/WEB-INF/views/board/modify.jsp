<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시물 수정</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
<h2>게시물 수정</h2>
<form action="/board/modify" method="post">
    <input type="hidden" name="bno" value="${board.bno}">
    <div class="mb-3">
        <label for="title">제목 : </label>
        <input type="text" class="form-control" id="title" value="${board.title}" name="title">
    </div>
    <div class="mb-3">
        <label for="content">내용 : </label>
        <textarea class="form-control" rows="5" id="content" name="content">${board.content}</textarea>
    </div>
    <button type="submit" class="btn btn-primary" id="modify">수정</button>
    <button type="button" class="btn btn-secondary" id="list">목록</button>
</form>
<script>
    $("#list").click(function (){
        self.location = `/board/list`;
    });
</script>
</body>
</html>