package com.java.www.service;

import com.java.www.dao.BoardDao;
import com.java.www.dto.Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDeleteService implements BoardService {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        int bno = Integer.parseInt(request.getParameter("bno"));
        System.out.println("bno : "+bno);
        BoardDao boardDao = new BoardDao();
        boardDao.deleteOne(bno);

    }
}
