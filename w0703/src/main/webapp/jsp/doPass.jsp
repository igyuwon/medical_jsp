<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>미성년자 확인페이지</title>
</head>
<body>
    <%
        String name = URLEncoder.encode(request.getParameter("name"),"utf-8"); // 한글인코딩
        int age = Integer.parseInt(request.getParameter("age"));

        if(age>=18){
            response.sendRedirect("pass.jsp?name="+name+"&age="+age);
        }else{
            response.sendRedirect("pass.jsp?name="+name+"&age="+age);
        }
    %>

</body>
</html>
