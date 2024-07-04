<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>주류사이트</title>
  <style>
    table, th, td {
    border: 1px solid black;
    border-collapse: collapse
    }

    th {
    width: 120px
    }
  </style>
</head>
<body>
  <h2>주류사이트</h2>
  <table>
    <tr>
      <th>제목</th>
      <th>내용</th>
    </tr>
    <tr>
      <td>이름</td>
      <td><%=request.getParameter("name") %>
      </td>
    </tr>
    <tr>
      <td>나이</td>
      <td><%=request.getParameter("age") %>
      </td>
    </tr>

  </table>
  <h2>주류사이트 홈페이지를 보여줌.</h2>

</body>
</html>
