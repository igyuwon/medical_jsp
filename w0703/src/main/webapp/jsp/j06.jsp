<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response객체</title>
</head>
<body>
    <h2>나이를 입력하세요.</h2>
    <form action="doPass.jsp" method="get">
        <label>이름</label>
        <input type="text" name="name" placeholder="이름을 입력하세요.">
        <br>
        <label>나이</label>
        <input type="text" name="age" placeholder="나이를 입력하세요.">
        <br>
        <input type="submit" value="전송">
    </form>

</body>
</html>
