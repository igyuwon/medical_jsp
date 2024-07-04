<%--
  Created by IntelliJ IDEA.
  User: igyuwon
  Date: 24. 7. 3.
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String chk = null;
  String cookId = "";
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for (Cookie cookie : cookies) {
      if(cookie.getName().equals("remember")){
        chk = "checked";
        cookId = cookie.getValue();
        System.out.println("cookid : "+cookId);
      }
    }
  }
%>
<html>
  <head>
      <title>학생정보입력페이지</title>
  </head>
  <body>
    <!-- 쿠키 -->
  <!-- 첫페이지 co.jsp                   doco.jsp
    이름, 국어, 영어, 수학, 체크 : 이름저장 -> 이름,국어,영어,수학,합계,평균 입력창 이동
    체크박스,전송버튼
    이름은 자동으로 입력되도록 하시오.
    -->
    <h2>학생정보 입력</h2>
    <form action="doco.jsp" method="post">
      <label>이름</label>
      <input type="text" name="name" value=<%=cookId %>><br>
      <label>국어</label>
      <input type="text" name="kor"><br>
      <label>영어</label>
      <input type="text" name="eng"><br>
      <label>수학</label>
      <input type="text" name="math"><br>

      <input type="checkbox" name="remember"
             id="remember" value="remember" <%=chk%>>

      <label for="remember">이름 저장</label>
      <br>

      <input type="submit" value="로그인">


    </form>

  </body>
</html>
