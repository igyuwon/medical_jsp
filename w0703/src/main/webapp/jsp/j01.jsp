<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>스크립트릿</title>
</head>
<body>
    <%
        for(int i=0;i<10;i++){
            out.println("<h3> 2 * "+i+"="+(2*i)+"</h3>");
        }
//        int i = 0;
//        while(true){
//            i++;
//            out.println("2 * "+i+"="+(2*i)+"<br>");
//            if(i>=9) break;
//        }
    %>

</body>
</html>
