<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시물 목록</title>
</head>
<body>
<h2>게시물 목록</h2>
<p>게시물 수 : ${totalCount}</p>
<table>
    <tr>
        <td>bno</td>
        <td>title</td>
        <td>writer</td>
        <td>visitcount</td>
        <td>postdate</td>
    </tr>
    <c:forEach var="board" items="${boardList}">
        <tr>
            <td>${board.bno}</td>
            <td><a href="/board/view?bno=${board.bno}">${board.title}</a></td>
            <td>${board.writer}</td>
            <td>${board.visitcount}</td>
            <td>${board.postdate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>