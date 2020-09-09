===============================
====웹 크롤링 Servlet 시작점====





package com.kpc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kpc.test.JMTCraw;
import com.kpc.test.JMTVO;


@WebServlet("/JMTServlet")
public class JMTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JMTCraw jmt = new JMTCraw();
		ArrayList<JMTVO> jList = jmt.getGoods();
		
		RequestDispatcher rd = request.getRequestDispatcher("/JMT_List.jsp");
		request.setAttribute("JLIST", jList);
		rd.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


}





=============================
==========웹 크롤링==========




package com.kpc.test;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JMTCraw {
	
	public ArrayList<JMTVO> getGoods(){
		
		makeCert();
		ArrayList<JMTVO> jList = new ArrayList<JMTVO>();
		JMTVO jvo = null;
		
		try {
			Document doc = Jsoup.connect("https://www.siksinhot.com/taste?upHpAreaId=10&hpAreaId=79").get();
			Elements els = doc.select("#tabMove1 div ul li div.cont");
			
			for(Element el : els) {
				jvo = new JMTVO();
				jvo.setImg(el.select("a span img").attr("src"));
				jvo.setStar(el.select("a div em.score").text());
				jvo.setName(el.select("a div div strong").text());
				jvo.setLoc(el.select("a div ul:nth-child(3) li").text());
				jvo.setEtc(el.select("div a div p").text());
				jList.add(jvo);
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return jList;
		
	}
	
	
	

		public void makeCert() {
			try {
				TrustManager[] trustAllCerts = new TrustManager[]{new X509TrustManager(){
					public X509Certificate[] getAcceptedIssuers(){return new X509Certificate[0];}
					public void checkClientTrusted(X509Certificate[] certs, String authType){}
					public void checkServerTrusted(X509Certificate[] certs, String authType){}
				}};
				SSLContext sc;
				sc = SSLContext.getInstance("TLS");
				sc.init(null, trustAllCerts, new SecureRandom());
				HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (KeyManagementException e) {
				e.printStackTrace();
			} 
		}
	
	
		public static void main(String[] args) {
			JMTCraw fsd = new JMTCraw();
			ArrayList<JMTVO> jlist = fsd.getGoods();
			for(JMTVO j : jlist) {
				System.out.println(j);
			}
			
		}
}





==============================
===========웹 뿌리기===========





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="800" cellpadding="0" cellspacing="0">

<c:forEach items="${JLIST}" var="jvo">
	<tr>
		<td><img src="${jvo.img}" width="150" height="150"></td>
		<td>${jvo.star}</td>
		<td>${jvo.name}</td>
		<td>${jvo.loc}</td>
		<td>${jvo.etc}</td>
	</tr>
</c:forEach>

</table>

</body>
</html>










=============================
======= 엑셀 가져오기 VO =======





package com.kpc.test;

public class PharmIOVO {
	
//  요양기관명
  private String pharmName;
//  시도코드
  private String cityCode;
//  시도명
  private String cityName;
//  시군구코드
  private String streetCode;
//  시군구명
  private String streetName;
//  읍면동
  private String countyName;
//  우편번호
  private String zipcode;
//  주소
  private String addr;
//  전화번호
  private String tel;
//  X좌표 : 위도
  private String lat;
//  Y좌표 : 경도
  private String lng;
  
  
  
public String getPharmName() {
	return pharmName;
}
public void setPharmName(String pharmName) {
	this.pharmName = pharmName;
}
public String getCityCode() {
	return cityCode;
}
public void setCityCode(String cityCode) {
	this.cityCode = cityCode;
}
public String getCityName() {
	return cityName;
}
public void setCityName(String cityName) {
	this.cityName = cityName;
}
public String getStreetCode() {
	return streetCode;
}
public void setStreetCode(String streetCode) {
	this.streetCode = streetCode;
}
public String getStreetName() {
	return streetName;
}
public void setStreetName(String streetName) {
	this.streetName = streetName;
}
public String getCountyName() {
	return countyName;
}
public void setCountyName(String countyName) {
	this.countyName = countyName;
}
public String getZipcode() {
	return zipcode;
}
public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getLat() {
	return lat;
}
public void setLat(String lat) {
	this.lat = lat;
}
public String getLng() {
	return lng;
}
public void setLng(String lng) {
	this.lng = lng;
}



@Override
public String toString() {
	return "PharmIOVO [pharmName=" + pharmName + ", cityCode=" + cityCode + ", cityName=" + cityName + ", streetCode="
			+ streetCode + ", streetName=" + streetName + ", countyName=" + countyName + ", zipcode=" + zipcode
			+ ", addr=" + addr + ", tel=" + tel + ", lat=" + lat + ", lng=" + lng + "]";
}
  


}





==============================
========== 엑셀 가져오기 IO ==========




package com.kpc.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class PharmIO {

	public ArrayList<PharmIOVO> Pharm(){
		ArrayList<PharmIOVO> pList = new ArrayList<PharmIOVO>();
		File f = new File("C:\\AIP\\JAVA-workspace\\WEB_PRJ\\src\\com\\kpc\\test");
		if(f.isDirectory() ) {
			File[] files = f.listFiles();
			for(int i=0; i<files.length; i++) {
				if(files[i].getName().equals("pharm.txt")) {
					System.out.println("불러오기 성공");
					
					try {
						FileReader fr = new FileReader(files[i]);
						BufferedReader br = new BufferedReader(fr);
						
						PharmIOVO pvo = null;
						String line = null;
						String[] arr = null;
						while( (line = br.readLine()) !=null ) {
							pvo = new PharmIOVO();
							arr = line.split(",");
							if(arr.length == 11) {
								pvo.setPharmName(arr[0]);
								pvo.setCityCode(arr[1]);
								pvo.setCityName(arr[2]);
								pvo.setStreetCode(arr[3]);
								pvo.setStreetName(arr[4]);
								pvo.setCountyName(arr[5]);
								pvo.setZipcode(arr[6]);
								pvo.setAddr(arr[7]);
								pvo.setTel(arr[8]);
								pvo.setLat(arr[9]);
								pvo.setLng(arr[10]);
								pList.add(pvo);
								
							}
							
						}
					
					
					
					
					
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		} else {
			System.out.println("파일을 찾지 못했습니다. 프로그램을 종료합니다.");
		}
		return pList;

	}
	
	public static void main(String[] args) {
		PharmIO io = new PharmIO();
		ArrayList<PharmIOVO> pList =  io.Pharm();
		for(int i=0; i<pList.size(); i++) {
			System.out.println(pList.get(i));
		}
		
	}

}
