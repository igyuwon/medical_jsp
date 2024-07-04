<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>쿠키삭제 확인</title>
    </head>
    <body>
        <%
            Cookie[] cookie = request.getCookies();
            if(cookie != null) {
                for (Cookie c : cookie) {
                    System.out.println("찾은 쿠기 : "+c.getName());
                }
            }
        %>
        <a href="cookieSave.jsp">쿠키 저장하기</a>

    </body>
</html>
