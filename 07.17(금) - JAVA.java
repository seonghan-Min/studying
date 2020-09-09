package com.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class Ch11Collection {

	public static void main(String[] args) {
		// Collection : 데이터 군집.
		// 배열과의 차이
			// 배열은 정확한 배열의 크기(Length[])를 선언시 지정해줘야만 한다.
			// 반면 Collection은 가변 크기의 데이터가 담긴다.
		// 경로 Interface	- Iterable<E>
		//				- Collection<E>	
		//				- List<E>		...ArrayList, Vector
		//				- Set<E>		...HashSet
		// 그 외			- Map<E>		...HashMap
		
		
		
		// Wrapper Class
		// Reference 타입을 Primitive 타입으로 캐스팅하기 위한 class
		// 반드시 첫 글자를 대문자로 타이핑 해야한다.
		// int		Interger
		// byte		Byte
		// short	Short
		// long		Long
		// char		Character
		// double	Double
		System.out.println(); System.out.println("===== Wrapper Class ====="); System.out.println();
		int res = Integer.parseInt("1");
		System.out.println(res + 10);
		
		
		
		
		
		// ArrayList
		System.out.println(); System.out.println("===== ArrayList ====="); System.out.println();
		ArrayList list = new ArrayList();
		list.add("ABC");
		list.add(1);
		list.add(5);
		System.out.println(list);						// list 출력
		System.out.println(list.indexOf(5) + "번째 위치"); // list 특정 데이터 위치 출력
		System.out.println(list.get(0));				// list 데이터 선택적 출력
		System.out.println(list.size());				// list 크기 출력
		list.remove(2);									// list remove를 하게되면 index가 빠져나가 순서를 재배치한다.
		list.set(0, "DDD");
		System.out.println(list);
		
		
		
		
		
		// HashSet
		System.out.println(); System.out.println("===== HashSet ====="); System.out.println();
		HashSet set = new HashSet();
		set.add("CCC");
		set.add("DDD");
		set.add("AAA");
		set.add("AAA");
		set.add("AAA");									// HashSet의 특징. 데이터 중복을 배제하고 유니크하게 뽑는다.
		System.out.println(set);
		System.out.println(set.size());					// 사이즈 마찬가지로 중복을 제외한 크기만 찍힌다.
		System.out.println(set.iterator());
		set.remove("AAA");
		System.out.println(set); 						// AAA가 세 개나 들어갔음에도 불구하고 전부 지워진다. 순서 상관 없다.
		
		
		
		// HashMap
		// put 명령으로 넣는다.
		// JAVA에서 컬럼을 뽑아오는 명령을 사용하려면 해당 컬럼이 몇 번쨰인지 알아야 한다.
		// 컬럼이 많아진다면 직접 셀 수 없으므로 굉장히 힘들다.
		// 그럴 때 사용하는 코드가 hashMap이다.
		// 원하는 컬럼의 이름만 알면 바로 뽑아올 수 있다.
		// 다만 컬럼이 두 개 이상일 경우 new 선언을 컬럼 갯수만큼 해줘야하므로 불편하다.
		// 따라서 List와 적절히 섞어서 사용하면 최상의 코드를 뽑아낼 수 있다.
		System.out.println(); System.out.println("===== HashMap ====="); System.out.println();
		HashMap map = new HashMap();
		map.put("name", "SMITH");
		map.put("sal", 1000);					
		map.put("deptno", 10);						
		System.out.println(map);
		System.out.println(map.get("name"));
		
		
		
		// 제네릭(Generic) = <>
		// 문법에 맞도록 ArrayList 속에서 생성한 HashMap의 값을 출력하기 위해선 아래의 방법을 사용해야한다.
			//		
			//		HashMap rmap = (HashMap)empList.get(1);
			//		int sal = (int)rmap.get("sal");
			//		System.out.println(sal);
			//		
			//			
			//		int s = (int)((HashMap)empList.get(1)).get("sal");
			//		System.out.println(s);
			//
		// 하지만 이 방법을 사용하면 복잡한 캐스팅 과정을 거쳐야하므로 굉장히 불편하다.
		// 이럴 때 사용하는게 바로 제네릭이다.
		//  ArrayList의 Element<>로 hashMap을 사용하면 된다.
		// 이를 사용하면 return type이 Object가 아닌 HashMap으로 자동 캐스팅된다.
		// 따라서 이후에 캐스팅을 따로 해줄 필요가 없다.
		ArrayList<Ch11EmpVO> empList = new ArrayList<Ch11EmpVO>();
		for(int i=0; i<10; i++) {
			Ch11EmpVO vo = new Ch11EmpVO();
			vo.setEname("SMITH" +i);
			vo.setSal(100*i);
			vo.SetDeptno(10);
			empList.add(vo);
		}System.out.println(empList);
		
		
		int sal = 0;
		String ename = null;
		for(int i=0; i<empList.size(); i++) {
			ename = empList.get(i).getEname();
			sal = empList.get(i).getSal();
			
		}
	
		
		// Map에서 KEY를 하나 하나 지정 하는것은 비효율적.
		// Map<k,v> 제네릭을 사용해도 v = object 타입이면 제네릭 효과가 없다.
		// VO를 사용하면 이 문제를 더욱 쉽게 해결 가능.
				
				
		
		
		

	}

}






======================
=========JDBC=========





package com.emp;

import java.util.ArrayList;

public interface EmpAble {
	
	// 목록보기
	public ArrayList<EmpVO> select();
	// 상세보기
	public EmpVO select(int empnoPara);
	// 검색
	public ArrayList<EmpVO> select(String StringStr);
	// 입력
	public int insert (int empnoPara, String enamePara, int deptnoPara);
	// 수정
	public int update (int empnoPara, String enamePara, int salPara);
	// 삭제
	public int delete (int empnoPara);
	


	}
	
	
	
	
	
======================
=========JDBC=========





package com.emp;

public class EmpVO {
	// ctrl shift Y (소문자) X (대문자)
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private String hiredate;
	private int sal;
	private int comm;
	private int deptno;
	public int getEmpno() {
		return empno;
		
		
	// 마우스 우클릭 + source + Generate Getters and Setters
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public int getComm() {
		return comm;
	}
	public void setComm(int comm) {
		this.comm = comm;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	@Override
	public String toString() {
		return empno +"\t" + ename + "\t" + job + "\t" + mgr + "\t" 
			 + hiredate + "\t" + sal + "\t" + comm + "\t "+ deptno;
	}
}





======================
=========JDBC=========





package com.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.test.Ch11EmpVO;

public class EmpAbleImpl implements EmpAble{
	
	
	
	
	// 목록보기 (Select)
	@Override
	public ArrayList<EmpVO> select() {
		DBManager db = new DBManager();
		ArrayList<EmpVO> empList = new ArrayList<EmpVO>();
		EmpVO vo = null;
		
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;;
		
		try {
			c = db.conn("oracle");
			String sql = "select empno, ename, job, mgr, hiredate, sal, deptno from emp";
			pstmt = c.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next() ) {
				vo = new EmpVO();
				vo.setEmpno(rs.getInt("empno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setMgr(rs.getInt("mgr"));
				vo.setHiredate(rs.getString("hiredate"));
				vo.setSal(rs.getInt("sal"));
				vo.setComm(rs.getInt("comm"));
				vo.setDeptno(rs.getInt("deptno"));
				empList.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.close(c);
		return empList;
		
	
	}

	
	
	
	
	// 직원 상세보기	(Select Empno)
	@Override
	public EmpVO select(int empnoPara) {
			DBManager db = new DBManager();
			ArrayList<EmpVO> empList = new ArrayList<EmpVO>();
			EmpVO vo = null;
			
			Connection c = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				c = db.conn("oracle");
				String sql = "select * from emp where empno=?";
				pstmt = c.prepareStatement(sql);
				pstmt.setInt(1, empnoPara);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					vo = new EmpVO();
					vo.setEmpno(rs.getInt("empno"));
					vo.setEname(rs.getString("ename"));
					vo.setJob(rs.getString("job"));
					vo.setMgr(rs.getInt("mgr"));
					vo.setHiredate(rs.getString("hiredate"));
					vo.setSal(rs.getInt("sal"));
					vo.setComm(rs.getInt("comm"));
					vo.setDeptno(rs.getInt("deptno"));
		          }   

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			db.close(c);
			return vo;
		
		

	}	

	
	
	
	
	// 검색 (Select Alphabet)
	@Override
	public ArrayList<EmpVO> select(String enamePara) {
		DBManager db = new DBManager();
		ArrayList<EmpVO> empList = new ArrayList<EmpVO>();
		EmpVO vo = null;
		
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			c = db.conn("oracle");
			String sql = "select * from emp where ename like '%' || ? || '%'";
			pstmt = c.prepareStatement(sql);
			pstmt.setString(1, enamePara);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new EmpVO();
				vo.setEmpno(rs.getInt("empno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setMgr(rs.getInt("mgr"));
				vo.setHiredate(rs.getString("hiredate"));
				vo.setSal(rs.getInt("sal"));
				vo.setComm(rs.getInt("comm"));
				vo.setDeptno(rs.getInt("deptno"));
				empList.add(vo);
	          }  
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		db.close(c);
		System.out.println("close");
		return empList;
	}

	
	
	

	// 입력 (Insert)
	@Override
	public int insert(int empnoPara, String enamePara, int deptnoPara) {
		DBManager db = new DBManager();
		
		
		Connection c = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		
		try {
			c = db.conn("oracle");  	// oracle 또는 mysql 입력		
			String sql = "insert into emp(empno, ename, deptno) values(?,?,?)";
			pstmt = c.prepareStatement(sql);
			pstmt.setInt(1, empnoPara);		// binding 바인딩
			pstmt.setString(2, enamePara);
			pstmt.setInt(3,  deptnoPara);
			rows = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		db.close(c);
		return rows;
	}

	
	
	
	
	// 수정 (Update)
	@Override
	public int update(int empnoPara, String enamePara, int salPara) {
DBManager db = new DBManager();
		
		Connection c = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		
		try {
			c = db.conn("oracle");  	// oracle 또는 mysql 입력		
			String sql = "update emp set Empno=?, Ename=? where Sal=?";
			pstmt = c.prepareStatement(sql);
			pstmt.setInt(1, empnoPara);		// binding 바인딩
			pstmt.setString(2, enamePara);
			pstmt.setInt(3, salPara);
			rows = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		db.close(c);
		return rows;
	}

	
	
	
	
	// 삭제 (Delete)
	@Override
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





======================
=========JDBC=========





package com.emp;

import java.util.ArrayList;

public class EmpAbleCall {
	
	public static void main(String[] args) {
		
		EmpAbleImpl impl = new EmpAbleImpl();
		ArrayList<EmpVO> empList = new ArrayList<EmpVO>();
		EmpVO vo = new EmpVO();

		
//		전체 데이터 보기 (select All)
//		empList = impl.select();
//		for(int i=0; i<empList.size(); i++) {
//				System.out.println(empList.get(i));
//		}
		
		
		
//		// 한 명 데이터 보기 (Select empno)
//		vo = impl.select(7654);
//		System.out.println(vo);

		
		
//		// 검색 데이터 보기 (Select StringStr)
//		empList = impl.select("S");
//		for(int i=0; i<empList.size(); i++) {
//			System.out.println(empList.get(i));
//		}
		
		
//		// 삽입 (Insert)
//		int irow = impl.insert(8887, "XXname", 20);
//		System.out.println(irow + "건 입력...");

		
		
//		// 수정 (Update)
//		int urow = impl.update(8889, "YYname", 1231);
//		System.out.println(urow + "건 업데이트...");

		
		
//		// 삭제 (Delete)
//		int drow = impl.delete(8887);
//		System.out.println(drow + "건 삭제...");
	}

}
