<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request</title>
</head>
<body>
    <%
        out.println("컨텍스트 패스 : "+request.getContextPath());
        out.println("세션 정보 : "+request.getSession()+"<br>");
        out.println("url : "+request.getRequestURL()+"<br>");
        out.println("uri : "+request.getRequestURI()+"<br>");
        out.println("ip : "+request.getRemoteAddr()+"<br>");
    %>

</body>
</html>
