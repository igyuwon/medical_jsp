<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Arrays"%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>지시자</title>
</head>
<body>
    <%
        ArrayList list = new ArrayList();
        int[] arr = {1,2,3};
        out.println(Arrays.toString(arr));
    %>
    <%-- jsp주석 --%>
    <%--
    <%@ %> 지시자 : 전체페이지 속성지정, import
    <%! %> 선언식 : 전역변수, 메소드 선언을 할 수 있음
    <% %> 스크립트릿 : 자바소스 코드 넣을 수 있음
    <%= %> 표현식 : 변수, 메소드의 값을 출력 할 때 사용
    --%>

</body>
</html>
