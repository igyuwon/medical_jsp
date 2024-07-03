<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>선언식</title>
</head>
<body>
    <%!
        int i = 10;
        String str = "abcde";

    %>
    <%!
        public int sum(int a, int b) {
            return a + b;
        }
    %>
    <%
        out.println("i = "+i+"<br>");
        out.println("str = "+str+"<br>");
        out.println("sum = "+sum(1,5)+"<br>");
    %>

</body>
</html>
