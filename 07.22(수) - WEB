==============================
==========목록화면===========





<%@ page 
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import = "com.board.BoardAbleImple"
import = "com.board.BoardVO"
import = "java.util.ArrayList"
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

게시물 목록<hr>
<table border="1" width="300" cellpadding="0" cellspacing="0">
<tr>
	<td>글번호</td>
	<td>글제목</td>
	<td>글내용</td>
	<td>작성자</td>
	<td>작성일</td>
</tr>

<%
BoardAbleImple imple = new BoardAbleImple();
ArrayList<BoardVO> list = imple.select();
for(int i=0;i<list.size(); i++) { 
%>

	<tr>
		<td><%=list.get(i).getBseq()%></td>
		<td><a href="/BView?bseq=<%=list.get(i).getBseq()%>"><%=list.get(i).getTitle()%></td>
		<td><%=list.get(i).getContents()%></td>		
		<td><%=list.get(i).getRegid()%></td>
		<td><%=list.get(i).getRegdate()%></td>
	</tr>
	
<%
}
%> 
</table><br>
<form action="/Board_Form.jsp">
	<input type="submit" value=" 게시물입력 ">
</form>




</body>
</html>





==============================
==========게시물입력===========





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

글쓰기 입력 폼 <br>
-----------------------------------
<br>
<br>
<form method="post" action="/BInsert">
	Bseq		:<input type="text" name="bseq"><br>
	Title		:<input type="text" name="title"><br>
	Contents	:<textarea name="contents"></textarea><br>
	regID		:<input type="text" name="regid"><br>
	<br>
	<input type="submit" value="게시물입력POST">
</form>
<br>
<br>
-----------------------------------<br>
[ 형식 ] <br>
bseq 		= (숫자) <br> 
title 		=Title_(숫자) <br>
contents	=Contents_(숫자) <br>
regid		=ID_(숫자) <br>

</body>
</html>





==============================
========입력Controller========





package com.kpc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardAbleImple;
import com.board.BoardVO;

@WebServlet("/BInsert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String para = request.getParameter("bseq");
		String title = request.getParameter("title");
		String regid = request.getParameter("regid");
		String contents = request.getParameter("contents");
		
		int bseq = Integer.parseInt(para);
		
		BoardAbleImple impl = new BoardAbleImple();
		BoardVO vo = new BoardVO();
		vo.setBseq(bseq);
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setRegid(regid);
		
		int res = impl.insert(vo);  //<----------------
		if(res <= 0) {
			response.sendRedirect("/error_page.jsp");
		} else {
			response.sendRedirect("/BList?CODE=ok");
		}
	}

}





==============================
========수정Controller========






package com.kpc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardAbleImple;
import com.board.BoardVO;

/**
 * Servlet implementation class BoardUpdateServlet
 */
@WebServlet("/BUpdate")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String regid = request.getParameter("regid");
		String para = request.getParameter("bseq");
		int bseq = Integer.parseInt(para);
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title); 
		vo.setContents(contents);
		vo.setRegid(regid);
		vo.setBseq(bseq);
		BoardAbleImple impl = new BoardAbleImple();
		int res = impl.update(vo); 
		
		if(res <= 0) {
			response.sendRedirect("/error_page.jsp");
		} else {
			response.sendRedirect("/Start.jsp");
		}
	}

}





==============================
========삭제Controller========





package com.kpc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardAbleImple;

/**
 * Servlet implementation class BoardDeleteServlet
 */
@WebServlet("/BDelete")
public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prm = request.getParameter("bseq");
		int bseq = Integer.parseInt(prm);
		
		BoardAbleImple impl = new BoardAbleImple();
		int res = impl.delete(bseq);
		if(res <= 0) {
			response.sendRedirect("/error_page.jsp");
		} else {
			response.sendRedirect("/Start.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}





===============================
==========Error페이지==========





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
시스템 복구 중입니다.<br>
잠시 후 다시 시도하세요.
</body>
</html>





==============================
===========Redirect===========





package com.kpc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardAbleImple;
import com.board.BoardVO;

@WebServlet("/BInsert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String para = request.getParameter("bseq");
		String title = request.getParameter("title");
		String regid = request.getParameter("regid");
		String contents = request.getParameter("contents");
		
		int bseq = Integer.parseInt(para);
		
		BoardAbleImple impl = new BoardAbleImple();
		BoardVO vo = new BoardVO();
		vo.setBseq(bseq);
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setRegid(regid);
		
		int res = impl.insert(vo);  //<----------------
		if(res <= 0) {
			response.sendRedirect("/error_page.jsp");
		} else {
			response.sendRedirect("/BList?CODE=ok");
		}
	}

}
