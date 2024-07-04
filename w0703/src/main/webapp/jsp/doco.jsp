<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인정보</title>
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
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));
    int total = kor+eng+math;
    double avg = total/3.0;
%>
<h2>로그인정보</h2>
<table>
    <tr>
        <th>제목</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>이름</td>
        <td><%=name %>
        </td>
    </tr>
    <tr>
        <td>국어</td>
        <td><%=kor%>
        </td>
    </tr>
    <tr>
        <td>영어</td>
        <td><%=eng%>
        </td>
    </tr>
    <tr>
        <td>수학</td>
        <td><%=math%>
        </td>
    </tr>
    <tr>
        <td>합계</td>
        <td><%=total%>
        </td>
    </tr>
    <tr>
        <td>평균</td>
        <td><%=avg%>
        </td>
    </tr>
</table>
<%
    String remember = request.getParameter("remember");
//        String[] remember = request.getParameterValues("remember");
    if(remember != null){
        Cookie rcookie = new Cookie("remember",request.getParameter("name"));
        rcookie.setMaxAge(60*60*24*30); // 60초*60분*24시간*30일
        response.addCookie(rcookie);

    }
%>
<a href="co.jsp">입력창으로 이동</a>

</body>
</html>
