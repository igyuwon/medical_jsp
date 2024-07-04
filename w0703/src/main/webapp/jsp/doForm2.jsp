<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보</title>
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
    <h2>회원정보</h2>
    <%
        Enumeration enums = request.getParameterNames();
        while(enums.hasMoreElements()) {
            String sname = (String) enums.nextElement();
            out.println(sname);
        }
    %>


</body>
</html>
