<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Hello_Test 페이지</title>
</head>

<body>
<!-- 
/hello 페이지로 가서 get 메서드를 읽으라는 명령.
이 때 inputType으로 텍스트 형식의 네모칸을 형성하고
submit 버턴을 만들되, 버튼 내에 '전송' 이라는 글자를 출력시킴.
출력 이라는 버튼을 누르면 /hello 페이지로 이동.
페이지 명령문 내에 doGet을 읽기 시작.
 -->
Hello
<form method="get" action="/hello"> 
   <input type="text" name="bseqABC"><br>
   
   <input type="submit" value="전송">
</form>

---------------------------------<br>
<!-- 
/blist 페이지로 가서 post 메서드를 읽으라는 명령.
이 때 inputType으로 텍스트 형식의 네모칸을 형성하고
submit 버턴을 만들되, 버튼 내에 'blist이동' 이라는 글자를 출력시킴.
blist이동 이라는 버튼을 누르면 /blist 페이지로 이동.
페이지 명령문 내에 doPost를 읽기 시작.
 -->
Mlist
<form method="post" action="/Mlist"> 
   <input type="text" name="게시물목록"><br>
   
   <input type="submit" value="Mlist이동">
</form>


</body>

</html>





------------------------------------------------------------------------------





package com.kpc.mine;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.BoardAbleImple;
import com.board.BoardVO;


@WebServlet("/Mlist")
public class MineList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = "SMITH";
	      int sal = 1000;
	      response.sendRedirect("/hello_result2.jsp?enamekkk=" + name + "& salkkk=" + sal);

		
		
	}

	
	// 아까는 syso로 콘솔에 찍었다. web에 보여진 적 없음.
	// 그나마 web에 보냈다 하는건 println으로 보냈지, 객체를 통째로 보낸 적 없다.
	// 이제부터 할 것은 객체를 통째로 넘기는 문법을 안내할 것.
	
	// sendRedirect, requestDispatcher
	// sendRedirect
		// get 방식으로 해당 페이지를 재요쳥하는 메서드(F5 라고 생각하면 편하다).
		// 말 그대로 재요청이므로 request 객체와 response 객체가 매번 재생성됨.
	// requestDispatcher
		// 사용자로부터 들어온 요청을 JSP, Servlet, Html 등 외부에 보내는 메서드.
		// 외부 매체로 요청을 보내거나, 요청을 받아오는 역할 수행.
		// forward 메서드를 사용하여 요청 제어 권한을 넘긴다.
	
	// Hello_Test로 부터 'blist 페이지로 넘어와 post를 읽어라' 는 명령을 받아 넘어왔다.
	// 이전에 작성해둔 BoardAbleImple 클래스로부터 JDBC 데이터를 읽는다.
	// 우리가 출력하고자 하는 내용은 한 줄 이상의 내용을 포함하고 있으므로 ArrayList를 사용한다.
	// imple로 부터 실행한 메서드의 결과값을 list에 담는다.
	// RequestDispatcher 타입의 변수를 선언하고, Hello_result.jsp 로 요청을 보낸다.
	// 이 때 보내는 내용인 list는 "MYLIST" 라고 이름을 명시해준다.
	// 위의 과정을 통해 받아온 응답을 forward 메서드를 통해 출력한다.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardAbleImple imple = new BoardAbleImple();
		ArrayList<BoardVO> list = imple.select();
		
		RequestDispatcher rd = request.getRequestDispatcher("/Mine_result.jsp");
		request.setAttribute("MYLIST", list);
		rd.forward(request, response);
		
		
	}

}






-----------------------------------------------------------------------------------------





<!--   -->
<%@ page 	
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="com.board.BoardAbleImple"
import="com.board.BoardVO"
import="java.util.ArrayList"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 <%		// scriptlet 으로 부름

// MCV Pattern1 : JSP가 JAVA를 직접 호출하는 방식.
// MCV Pattern2 : JSP(View) - Servlet(Controller) - JAVA(Moadel) 
// 절대 하면 안되는 코딩.
// 보안의 위협이 존재하며, 굳이 이렇게 할 필요까지 없다.
	// BoardAbleImple impl = new BoardAbleImple();
	// ArrayList<BoardVO> list = impl.select();
	// System.out.println(list.size());
	// out.println(list.size() + "건 게시물<br>");


 // RequestDispatcher가 보낸 요청을 받아온다(Hello_result).
 // 이 때 받아오는 내용은 "MYLIST" 이며, 이를 ArrayList 타입의 list라는 값에 다시 담아준다.
 // 출력되는 값을 for문을 이용하여 차례대로 뽑아준다.
 // 결과값을 blist에 응답으로 보낸다.
 ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("MYLIST");
 for(int i=0; i<list.size(); i++){
 	out.println(list.get(i).getBseq());
 	out.println(list.get(i).getTitle() +  "<br>" );
 }
 %>

</body>
</html>




