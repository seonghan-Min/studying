===============================
==========Paging Test==========


package com.kpc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kpc.common.PagingUtil;
import com.pharm.PharmIO;
import com.pharm.PharmIOVO;
import com.pharm.PharmImple;


@WebServlet("/pharm")
public class PharmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	/**
	 * @param url 			: 페이징 적용 대상 주소  (예) /board/BoardServlet
	 * @param currentPage 	: 현재 페이지
	 * @param totRecord 	: 젠체 게시물수
	 * @param blockCount 	: 한 블럭의 게시물 수
	 * @param blockPage  	: 한화면에 보여질 블럭 수
	 **/	
	
	// 페이징 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PharmImple imple = new PharmImple();
		
		// 사용할 변수 설정
		String url = "/pharm?";
		int currentPage = 1;
		String pageStr = request.getParameter("currentPage");
		
		if(pageStr !=null) {
			currentPage = Integer.parseInt(pageStr);
		}
		
		int totRecord = imple.selectCount();
		int blockCount = 10;
		int blockPage = 20;
		
		
		// Get 부분
		PagingUtil util = new PagingUtil(url,currentPage,totRecord,blockCount,blockPage);
		ArrayList<PharmIOVO> list = imple.select(util.getStartSeq(),util.getEndSeq());
		
		RequestDispatcher rd = request.getRequestDispatcher("/Pharm_List.jsp");
		request.setAttribute("LIST", list);
		request.setAttribute("SIZE", list.size());
		request.setAttribute("PAGE", util.getPagingHtml());
		rd.forward(request, response);
		
	}


	
	
	// AJAX 테스트
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PharmImple imple = new PharmImple();
		String sPara = request.getParameter("startSeq");
		String ePara = request.getParameter("endSeq");
		int startSeq = 1;
		int endSeq = 100;
		
		if(sPara !=null) { startSeq = Integer.parseInt(sPara); }
		if(ePara !=null) { endSeq = Integer.parseInt(ePara); }
		
		ArrayList<PharmIOVO> list = imple.select(startSeq, endSeq);
		
		PrintWriter out = response.getWriter();
		out.println("서버로부터 응답 ok... ");
		
	
	}

}





==============================
==========imple 호출==========





package com.pharm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PharmImple {
	
	public ArrayList<PharmIOVO> select (int startSeq, int endSeq){
		DBManager db = new DBManager();
		ArrayList<PharmIOVO> pList = new ArrayList<PharmIOVO>();
		PharmIOVO pvo =null;
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			c = db.conn("oracle");
			String sql = " select tt.* from ( select rownum as rnum, t.* from (select * from pharm order by pharm_name desc) t ) tt where rnum between ? and ?";
			pstmt = c.prepareStatement(sql);
			pstmt.setInt(1, startSeq);
			pstmt.setInt(2, endSeq);
			res = pstmt.executeQuery();
			while(res.next() ) {
				pvo = new PharmIOVO();
				pvo.setPharmName(res.getString("pharm_name"));
				pvo.setCityCode(res.getString("city_code"));
				pvo.setCityName(res.getString("city_name"));
				pvo.setStreetCode(res.getString("street_code"));
				pvo.setStreetName(res.getString("street_name"));
				pvo.setCountyName(res.getString("county_name"));
				pvo.setZipcode(res.getString("zipcode"));
				pvo.setAddr(res.getString("addr"));
				pvo.setTel(res.getString("tel"));
				pvo.setLat(res.getString("lat"));
				pvo.setLng(res.getString("lng"));
				pList.add(pvo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c, pstmt, res);
		}
		
		
		
		return pList;
		
	}
	
	
	
	
	
	public int selectCount() {
		DBManager db = new DBManager();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		int count = 0;
		
		try {
			c = db.conn("oracle");
			String sql = "select count(1) as cnt from pharm";
			pstmt = c.prepareStatement(sql);
			res = pstmt.executeQuery();
			res.next();
			count = res.getInt("cnt");
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c, pstmt, res);
		}
		
		
		
		return count;
		
	}

	

}





==============================
==========Page Util부=========





package com.kpc.common;

public class PagingUtil {

	private int startSeq;				// 현재 블럭의 처음 글번호
	private int endSeq;					// 현재 블럭의 끝 글번호
	private int maxPage;				// 최대 페이지 수
	private int startBlock;  			// 블럭 시작번호
	private int endBlock;				// 블럭 끝번호
	private StringBuffer pagingHtml; 	// 페이징 관련 HTML

	
	public PagingUtil(String url, int currentPage, int totPost, int blockCount, int blockPage) {
		/**
		 * @param url 			: 페이징 적용 대상 주소  (예) /board/BoardServlet
		 * @param currentPage 	: 현재 페이지
		 * @param totRecord 	: 젠체 게시물수
		 * @param blockCount 	: 한 블럭의 게시물 수
		 * @param blockPage  	: 한화면에 보여질 블럭 수
		 **/
		
		
		// (1)
		// 최대 페이지 수 구하기 
		// '전체 게시물'을 '한 페이지에 보여질 게시물 수' 로 나눠 '총 페이지 수' 를 구한다.
		// Math.ceil = 소숫점 자리의 숫자와 상관없이 무조건 정수만큼 올림한다. (ex 1.3 -> 2)
		// 만약 현재 페이지가 전체 페이지 수 보다 크면 maxpage를 현재 페이지 수로 설정한다.
		maxPage = (int) Math.ceil((double) totPost / blockCount);
		if (maxPage == 0) {
			maxPage = 1;
		}
		if (currentPage > maxPage) {
			currentPage = maxPage;
		}

		
		
		// (2) 
		// 현재 페이지의 처음과  끝 글번호 가져오기
		startSeq = (currentPage - 1) * blockCount + 1;
		endSeq = currentPage * blockCount;

		
		
		// (3) 
		// 시작페이지와 끝페이지 값 구하기
		// 만약 마지막페이지가 전체페이지수보다 크면 전체페이지 수로 설정하기
		if ( currentPage % blockPage == 0 ) {
			startBlock = currentPage - ( blockPage - 1 );
		} else {
			startBlock = (int)(currentPage / blockPage) * blockPage +1;
		}
		endBlock = startBlock + blockPage - 1;
		if (endBlock > maxPage) {
			endBlock = maxPage;
		}

		
		
		
		//################## HTML 만들기 ###################
		// [처음] HTML
		pagingHtml = new StringBuffer();
			pagingHtml.append("<a href='" + url + "&currentPage=1'>");
			pagingHtml.append("처음");
			pagingHtml.append("</a>");
		
		// [이전] HTML
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			pagingHtml.append("<a href='"+ url +"&currentPage="  + (startBlock - 1) + "'>");
			pagingHtml.append("이전");
			pagingHtml.append("</a>");
		}

		pagingHtml.append(" | ");
		// |1|2|3|4|5|  HTML (현재 페이지는 빨간색으로 강조하고 링크 제거)
		for (int i = startBlock; i <= endBlock; i++) {
			if (i > maxPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append(" <b><font color='red'>");
				pagingHtml.append(i);
				pagingHtml.append("</font></b>");
			} else {
				pagingHtml.append(" <a href='" + url +"&currentPage=");
				pagingHtml.append(i);
				pagingHtml.append("'>");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}

			pagingHtml.append(" ");
		}
		pagingHtml.append("  |  ");

		// [다음] HTML
		if (maxPage - startBlock >= blockPage) {
			pagingHtml.append("<a href='" + url +"&currentPage="  + (endBlock + 1) + "'>");
			pagingHtml.append("다음");
			pagingHtml.append("</a>");
		}
	}

	public String getPagingHtml() {
		return pagingHtml.toString();
	}

	public int getStartSeq() {
		return this.startSeq;
	}

	public int getEndSeq() {
		return this.endSeq;
	}



}





==============================
==========page 구현부==========





<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

총 ${SIZE} 건<br>

<table border="1" width="1500" cellpadding="0" cellspacing="0">

<tr>
	<td>약국이름</td>
	<td>시도코드</td>
	<td>시도명</td>
	<td>시군구코드</td>
	<td>시군구명</td>
	<td>읍면동</td>
	<td>우편번호</td>
	<td>집주소</td>
	<td>전화번호</td>
	<td>위도</td>
	<td>경도</td>
</tr>

<c:forEach items="${LIST}" var="pvo">
	<tr>
		<td>${pvo.pharmName}</td>
		<td>${pvo.cityCode}</td>
		<td>${pvo.cityName}</td>
		<td>${pvo.streetCode}</td>
		<td>${pvo.streetName}</td>
		<td>${pvo.countyName}</td>
		<td>${pvo.zipcode}</td>
		<td>${pvo.addr}</td>
		<td>${pvo.tel}</td>
		<td>${pvo.lat}</td>
		<td>${pvo.lng}</td>
	</tr>
</c:forEach>
</table>

${PAGE}

</body>
</html>





==============================
=============JQUREY============





// Restful Service
// 기존의 XML의 방식 중 치명적인 단점을 보완한 방법.
// XML은 사이트마다 요구하는 요청 방식에 맞게 코딩을 작성하여 요청을 해야만 응답을 받을 수 있었다.
// 이 단점을 보완한게 Restuful 서비스이다.
// 사전에 오픈되어있는 주소로 요청을 전달하면, 해당 주소로 도착한 요청에 의해 기업이 알아서 명령을 수행한 뒤 요청에 응답을 담아 전달해준다.
	// 특징
	// 1. XML, JSON 형태의 데이터 응답을 출력한다.
	// 2. 웹 서비스 형태이다. 공개된 주소로 요청을 넣으면 위의 형태로 응답을 받을 수 있다.
	// 3. 경량 및 분산 서비스 (공개된 주소를 통해 요청을 넣으면 부족한 나의 서버를 대신하여 오픈소스가 요청을 실행하여 응답을 하달시켜준다.)
	

// AJAX (Asynchronous JavaScript and XML. 비동기통신)
// 외부 데이터를 통신할 때 사용하는 방식.
// 동기통신이란 내가 요청을 날리는 동안 다른 작업을 수행할 수 없는 것을 의미한다.
// 간단한 예로 자판기 커피를 들 수 있다. 커피 버튼을 눌러 커피가 제조되는 동안 다른 버튼은 동작하지 않는다. 커피가 완성되야만 다음 버튼이 작동한다.
// 반대로 비동기통신은 누구든 요청할 수 있다. 다만 요청에 순차적으로 답변한다는 보장은 없다.
// 답변은 JSON 형태로 받게된다.
// 문법
	// $(selector).load(URL,data,callback);
		// $("#div1").load("demo_test.txt");
		// demo_test.txt 파일을 읽어서 div1 에 출력하라는 의미.
		
	// $.get(URL,callback);
		// $("button").click(function(){
  		// $.get("demo_test.asp", function(data, status){
    	//		alert("Data: " + data + "\nStatus: " + status);
  		// 		});
		// });
			// demo_test.asp로 가서 function(요청) 을 날린 후 콜백(기다리기)한다.
			// 이후 응답이 오면 다시 가동하여 alert를 수행한다.
			// 만약 이 때 응답을 받지 못하면 function 상태로 동작하지 않는다. 이를 '홀딩' 이라고 한다.
		
	// $.post(URL,data,callback);
		// $("button").click(function(){
  		// 		$.post("demo_test_post.asp",
 		//	 	{
    	//		name: "Donald Duck",
    	//		city: "Duckburg"
 		//	 	},
  		//		function(data, status){
    	//		alert("Data: " + data + "\nStatus: " + status);
  		//		});
		//	});
			// 위와 동일한 통신방식. 다만 주소(get)이 아닌 post 방식이 사용되었다.
	
	// $.ajax(url [, setting]]))
		// get이나 post는 ajax을 간단히 한 문법.
		// ajax은 get이나 post와 달리 옵션을 매우 다양하게 설정할 수 있어서 많이 쓰인다.
		// 대괄호 안의 셋팅은 옵션이므로 하지 않아도 무관하다.
		// Settings 옵션
			// url : "_____"
			// method : "POST", "GET"
			// contentType :  'application/x=www/form-unlencode...'
			// data : _____ (보낼 데이터)
			// dataType : (서버로부터 올 응답 타입) XML, JSON, SCRIPT, ...
			// success : function(){...}
      
      
      
      
==============================
==========AJAX TEST===========





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 
$.ajax({
  url : "__________",
  method type : _______,  //"POST", "GET",  v1.9.0.
  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',   **********
  data : _______,  //***********
  dataType : _______,  //서버로부터 오는 응답 xml, json, script, html
  success : function(){ ... }
});

$.ajax(url, [setting....])
$.get("http://kaka.com", function(){ ... });
$.post("/binsert", function(){ ... })  

-->
<script>
$(document).ready(function(){
	$("#btn_id").click(function(){ 
		$.ajax({
			  url : "/pharm",
			  method : "post",  //"POST", "GET",  v1.9.0.
			  // contentType : 'application/x-www-form-urlencoded; charset=UTF-8'
			  data : "startSeq=1&endSeq=50",
			  // dataType : ,  //서버로부터 오는 응답 xml, json, script, html
			  success:function(result){
				  console.log(result); 
			  }
		});
	}); 
});	
</script>
</head>
<body>
AJAX 비동기통신 테스트<hr>
<input type="button" id="btn_id" value="AJAX(비동기)전송">

</body>
</html>
