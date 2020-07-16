package com.web;
//1. JDBC 드라이버 로드
	// JDBC driver class 			- Class.forName()
	// Systme.SetProperty()
//2. 데이터베이스 연결
	// Java.sql.Connection 			- getConnection()
//3. Statement 생성
	// java.sql.Statement 			- createStatement()
	// Java.sql.PreparedStatement	- prepareStatement()
//4. SQL문 전송
	// Java.sql.Statement 			- executeQuery()
	//  							- executeUpdate()
//5. 결과받기
	// Java.sql.ResultSet			- resultSet()
//6. 연결해제
	// java.sql.Connection			- close()


// DBManager Class 에서 JAVA와 DB를 연결했다면
// DBCall Class 에선 연결된 DB로부터 값을 가져올 것이다.
// 이는 위에 언급된 과정 중 2~6 에 해당되는 과정이다.


// DB로부터 값을 가져오는데 필요한 JAVA.SQL 클래스이다.
// 마찬가지로 import문은 따로 작성하지 않는다.
// 더 아래에서 값을 가져오는 코드로부터 디버깅을 통해 입력해주자.
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmpSelect {

	public static void main(String[] args) {
		DBManager db = new DBManager();
		
		
// ----------
		// C	Connection
		// P	PreparedStatement
		// R	ResultSet
		// c	conn = getConnection
		// s	sql = "select..."
		// p	prepareStatement(sql)
		// e	execueQuery() / Update()
		// n	next()
		
		
		// 가장 먼저 연결을 위해 Connection을 변수로 선언해준다.
		// 이후 SQL에서 Colum을 생성했듯 JAVA에서 SQL의 Colum을 가져올 state를 생성해야한다.
		// 이를 위해 PreparedStatement를 변수로 선언해준다.
		// preparedStatement 로부터 생성된 state에게 SQL 데이터를 전송하기 위해 executeQuery를 사용하는데
		// 이 때 executeQuery 전송 결과를 받기 위해 ResultSet을 변수로 설정해준다.
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		// 앞에서 선언한 Connection의 db.conn 을 사용하여 Oracle에 연결한다.
		// 이후 String_Type의 변수를 하나 생성하여 SQL에 하달할 명령을 입력해준다.
		// 이를 c의 전달함수 preparedStatement 에 넣는다. 이를 새로운 변수로 선언해준다.
		// 
		try {
			c = db.conn("oracle");  // oracle 또는 mysql 입력		
			String sql = "select empno, ename, to_char(hiredate, 'yyyy-mm-dd') as hiredate from emp";
			pstmt = c.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// while 안에서 사용하기엔 변수를 반복해서 선언하기 때문에
			// 밖으로 빼낸 뒤 지역변수 초기화.
			int empnoVal = 0;
			String enameVal = null;
			String hiredateVal = null;
			
			// 'next' = row return true
			// 'last' = row return false
			while(rs.next() ) {
				empnoVal = rs.getInt("empno");
				enameVal = rs.getString("ename");
				hiredateVal = rs.getString("hiredate");
				System.out.println(empnoVal + "\t" + enameVal + "\t" + hiredateVal);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		System.out.println("=====done=====");
		
		db.close(c);
		
	}
}





--------------------





package com.web;
//1. JDBC 드라이버 로드
	// JDBC driver class 			- Class.forName()
	// Systme.SetProperty()
//2. 데이터베이스 연결
	// Java.sql.Connection 			- getConnection()
//3. Statement 생성
	// java.sql.Statement 			- createStatement()
	// Java.sql.PreparedStatement	- prepareStatement()
//4. SQL문 전송
	// Java.sql.Statement 			- executeQuery()
	//  							- executeUpdate()
//5. 결과받기
	// Java.sql.ResultSet			- resultSet()
//6. 연결해제
	// java.sql.Connection			- close()


// DBManager Class 에서 JAVA와 DB를 연결했다면
// DBCall Class 에선 연결된 DB로부터 값을 가져올 것이다.
// 이는 위에 언급된 과정 중 2~6 에 해당되는 과정이다.


// DB로부터 값을 가져오는데 필요한 JAVA.SQL 클래스이다.
// 마찬가지로 import문은 따로 작성하지 않는다.
// 더 아래에서 값을 가져오는 코드로부터 디버깅을 통해 입력해주자.
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmpDelete {

	public int delete(int empnoPara) {
		DBManager db = new DBManager();
		
		Connection c = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			c = db.conn("oracle");  	// oracle 또는 mysql 입력		
			String sql = "delete from emp where empno=?";
			pstmt = c.prepareStatement(sql);
			pstmt.setInt(1, empnoPara);		// binding 바인딩
			rows = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		db.close(c);
		return rows;
		
	}
	
	
	

}
