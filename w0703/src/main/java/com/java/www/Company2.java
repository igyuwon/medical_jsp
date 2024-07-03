package com.java.www;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet("/cp2")
public class Company2 extends HttpServlet {
    static  int count = 1;

    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doAction");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String stuNo = "S"+String.format("%04d",count++);
        String name = request.getParameter("name");
        int kor=Integer.parseInt(request.getParameter("kor"));
        int eng=Integer.parseInt(request.getParameter("eng"));
        int math=Integer.parseInt(request.getParameter("math"));
        int total=kor+eng+math;
        double avg=total/3.0;

        System.out.printf("학번 : %s 이름 : %s, 국어 : %d, 영어 : %d, 수학 : %d, 총합 : %d, 평균 : %.2f\n", stuNo,name, kor, eng, math, total, avg);

        // 웹에 출력
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<head><title>학생정보</title></head>");
        writer.println("<body>");
        writer.println("<h2>[ 학생정보 ]</h2>");
        writer.println("<h3>학번 : "+stuNo+"</h3>");
        writer.println("<h3>이름 : "+name+"</h3>");
        writer.println("<h3>국어 : "+kor+"</h3>");
        writer.println("<h3>영어 : "+eng+"</h3>");
        writer.println("<h3>수학 : "+ math+"</h3>");
        writer.println("<h3>합계 : "+ total+"</h3>");
        writer.println("<h3>평균 : "+ avg+"</h3>");

        writer.println("</body>");
        writer.println("</html>");

        writer.close();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        doAction(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        doAction(request, response);
    }
}
