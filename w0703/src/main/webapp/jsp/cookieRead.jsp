<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>cookie read</title>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies(); // 모든 쿠키를 가져옴.
            if(cookies != null) {
                for(Cookie cookie : cookies) {
                    out.println("검색된 아이디 : "+cookie.getName()+"<br>");
                    if(cookie.getName().equals("c_id")) {
                        String id = cookie.getValue();
                        out.println("찾는 아이디 : "+id+"<br>");
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);

                    }
                }

            }
        %>
        <a href="cookieDel.jsp">쿠키삭제확인</a>

    </body>
</html>
