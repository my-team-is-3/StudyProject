<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시물 상세보기</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
<h2>게시물 상세보기</h2>
    <div class="mb-3">
        <label for="bno">Bno :</label>
        <input type="text" class="form-control" id="bno" value="${board.bno}" readonly>
    </div>
    <div class="mb-3">
        <label for="title">제목 :</label>
        <input type="text" class="form-control" id="title" value="${board.title}" readonly>
    </div>
    <div class="mb-3">
        <label for="content">내용 :</label>
        <input type="text" class="form-control" id="content" value="${board.content}" readonly>
    </div>

    <div class="mb-3">
        <label for="writer">작성자 :</label>
        <input type="text" class="form-control" id="writer" value="${board.writer}" readonly>
    </div>
    <div class="mb-3">
        <label for="visitcount">조회수 :</label>
        <input type="text" class="form-control" id="visitcount" value="${board.visitcount}" readonly>
    </div>
    <div class="mb-3">
        <label class="form-date-label">등록일</label>
        <input class="form-date-input" type="date" value="${board.postdate}" readonly>
    </div>
    <button type="button" id="modify" class="btn btn-primary">수정</button>
    <button type="button" id="delete" class="btn btn-danger">삭제</button>
    <button type="button" id="list" class="btn btn-secondary">목록</button>
<script>
var bno = $("#bno").val();

$("#modify").click(function (){
    self.location = '/board/modify?bno=' + bno;
});
$("#delete").click(function (){
    self.location = `/board/remove?bno=${board.bno}`;
});
$("#list").click(function (){
    self.location = `/board/list`;
});

</script>
</body>
</html>