<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>표현식</title>
</head>
<body>
    <%!
        int i = 10;
        String str = "abc";

        private int sum(int a, int b){
            return a+b;
        }
    %>

    <%
        out.println("i : "+i);
    %>

    <h3><%= i %></h3>
    <h3><%= str %></h3>
    <h3><%= sum(1,5) %></h3>

</body>
</html>
