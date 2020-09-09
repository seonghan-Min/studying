package com.test;
		// com 파일 밑에 test 파일이 존재한다는 말
		// package는 있을수도 있고 없을수도 있다.
		// java는 첫 줄 pakage로 시작한다.


public class HelloWorld {
		//test 파일 밑에 HelloWorld 파일이 있다는 말.
		//최하단 파일 밑의 제목은 반드시 첫글자 대문자

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 위의 public static void main(string[] 은 모든 프로그램의 시작을 의미하는 main 명령이다.
		// main 명령이 없다면 실행에 오류를 출력한다.
		// 여기서 public은 접근제어자 라고 한다.
		
		//	접근제어자는  [public, default, protected, private]  로 나뉜다.
		//	public은 패키지 외부에서도 내부에서도 그 어디에서도 사용 가능하다.
		//	private는 {} 안에서만 사용 가능하다.
		//	protected 는 같은 패키지 안이라면 어디서든 사용 가능하다.
		//	default 는 같은 패키지에 묵여있던가, 패키지가 다르다면 그 자손만 옮겨질 수 있다.
		//	[abstract, final, static]  은 원할 때 선택할 수 있는 접근제어자 옵션이다.
		
		
		System.out.println(111); // 숫자는 그냥 타이핑
		System.out.println('d'); // 한 글자는 작은 따옴표
		System.out.println("나글자"); // 한 글자 이상은 큰 따옴표
		//{}를 calss라고 한다. 이 class 안의 내용은 반드시 단어 첫 글자 대문자로 써야한다.
		// 여기서 println() 처럼 사용하는 것을 메서드 라고 한다. 쉽게 말해 '동작'. 
		// 이 때 메서드의 입력 방법은 '접근제어자 + 접근제어옵션 + 리턴타입(출력값) + 메서드명(인자, 파라미터, 아규먼트 ...) 이다.
		// 오라클에서 변수타입이 number, char, varchar2, date, long 등이 사용되었다면
		// 자바에서는 리턴타입이 int, char, string, date, long, void 으로 사용된다.
		// 여기서 리턴타입을 void로 입력하면 값이 존재해도 결과를 출력하지 않는다.
		// 위와 같은 형태의 명령어에서 특정한 기능을 수행하는 것을 '함수' 라고 한다.
		// 함수와 메서드는 다른 명령이다.
		
		int userScore = 100;
		int price = 20000;
		// 단어를 이어서 쓸 때 연결되는 단어의 첫 글자를 대문자로 사용한다.
		
		System.out.println(price);
		
	
	}

}

// 메서드가 동작 이었다면 변수는 메서드를 위해 사용되어지는 값이다.
// 		변수의 타입(Data Type)
// 		문자 - char[2]
// 		숫자 - 정수 - byte[2], short[2], int[4], long[8]
// 		숫자 - 실수 - float[4], double[8]
// 		논리 - boolean(true/false)[1]
// 위에서 언급한 변수의 타입을 Primitive(기본) 타입이라고 한다. 절대로 대문자로 시작하지 않는다.
// 
// 위의 8개를 제외한 모든 타입을 Reference(참조) 타입이라고 한다.
// 주소를 가지고 있으며, 그 주소를 따라가서야 바이트를 확인하는 타입이기에 참조 라고 부른다.
// 참조형 변수의 초기값은 NULL 이다.
//		Date, Member, 
//		String, List, 
//		Set, Map, Array
// 변수 값을 담는 그릇 이름을 '메모리 공간' 이라고 한다. 이 메모리 공간은 무조건 4바이트 이다. 이를 변수명으로 지정한다.package com.test;
		// com 파일 밑에 test 파일이 존재한다는 말
		// package는 있을수도 있고 없을수도 있다.
		// java는 첫 줄 pakage로 시작한다.


public class HelloWorld {
		//test 파일 밑에 HelloWorld 파일이 있다는 말.
		//최하단 파일 밑의 제목은 반드시 첫글자 대문자

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 위의 public static void main(string[] 은 모든 프로그램의 시작을 의미하는 main 명령이다.
		// main 명령이 없다면 실행에 오류를 출력한다.
		// 여기서 public은 접근제어자 라고 한다.
		
		//	접근제어자는  [public, default, protected, private]  로 나뉜다.
		//	public은 패키지 외부에서도 내부에서도 그 어디에서도 사용 가능하다.
		//	private는 {} 안에서만 사용 가능하다.
		//	protected 는 같은 패키지 안이라면 어디서든 사용 가능하다.
		//	default 는 같은 패키지에 묵여있던가, 패키지가 다르다면 그 자손만 옮겨질 수 있다.
		//	[abstract, final, static]  은 원할 때 선택할 수 있는 접근제어자 옵션이다.
		
		
		System.out.println(111); // 숫자는 그냥 타이핑
		System.out.println('d'); // 한 글자는 작은 따옴표
		System.out.println("나글자"); // 한 글자 이상은 큰 따옴표
		//{}를 calss라고 한다. 이 class 안의 내용은 반드시 단어 첫 글자 대문자로 써야한다.
		// 여기서 println() 처럼 사용하는 것을 메서드 라고 한다. 쉽게 말해 '동작'. 
		// 이 때 메서드의 입력 방법은 '접근제어자 + 접근제어옵션 + 리턴타입(출력값) + 메서드명(인자, 파라미터, 아규먼트 ...) 이다.
		// 오라클에서 변수타입이 number, char, varchar2, date, long 등이 사용되었다면
		// 자바에서는 리턴타입이 int, char, string, date, long, void 으로 사용된다.
		// 여기서 리턴타입을 void로 입력하면 값이 존재해도 결과를 출력하지 않는다.
		// 위와 같은 형태의 명령어에서 특정한 기능을 수행하는 것을 '함수' 라고 한다.
		// 함수와 메서드는 다른 명령이다.
		
		int userScore = 100;
		int price = 20000;
		// 단어를 이어서 쓸 때 연결되는 단어의 첫 글자를 대문자로 사용한다.
		
		System.out.println(price);
		
	
	}

}

// 메서드가 동작 이었다면 변수는 메서드를 위해 사용되어지는 값이다.
// 		변수의 타입(Data Type)
// 		문자 - char[2]
// 		숫자 - 정수 - byte[2], short[2], int[4], long[8]
// 		숫자 - 실수 - float[4], double[8]
// 		논리 - boolean(true/false)[1]
// 위에서 언급한 변수의 타입을 Primitive(기본) 타입이라고 한다. 절대로 대문자로 시작하지 않는다.
// 
// 위의 8개를 제외한 모든 타입을 Reference(참조) 타입이라고 한다.
// 주소를 가지고 있으며, 그 주소를 따라가서야 바이트를 확인하는 타입이기에 참조 라고 부른다.
// 참조형 변수의 초기값은 NULL 이다.
//		Date, Member, 
//		String, List, 
//		Set, Map, Array
// 변수 값을 담는 그릇 이름을 '메모리 공간' 이라고 한다. 이 메모리 공간은 무조건 4바이트 이다. 이를 변수명으로 지정한다.package com.test;
		// com 파일 밑에 test 파일이 존재한다는 말
		// package는 있을수도 있고 없을수도 있다.
		// java는 첫 줄 pakage로 시작한다.


public class HelloWorld {
		//test 파일 밑에 HelloWorld 파일이 있다는 말.
		//최하단 파일 밑의 제목은 반드시 첫글자 대문자

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 위의 public static void main(string[] 은 모든 프로그램의 시작을 의미하는 main 명령이다.
		// main 명령이 없다면 실행에 오류를 출력한다.
		// 여기서 public은 접근제어자 라고 한다.
		
		//	접근제어자는  [public, default, protected, private]  로 나뉜다.
		//	public은 패키지 외부에서도 내부에서도 그 어디에서도 사용 가능하다.
		//	private는 {} 안에서만 사용 가능하다.
		//	protected 는 같은 패키지 안이라면 어디서든 사용 가능하다.
		//	default 는 같은 패키지에 묵여있던가, 패키지가 다르다면 그 자손만 옮겨질 수 있다.
		//	[abstract, final, static]  은 원할 때 선택할 수 있는 접근제어자 옵션이다.
		
		
		System.out.println(111); // 숫자는 그냥 타이핑
		System.out.println('d'); // 한 글자는 작은 따옴표
		System.out.println("나글자"); // 한 글자 이상은 큰 따옴표
		//{}를 calss라고 한다. 이 class 안의 내용은 반드시 단어 첫 글자 대문자로 써야한다.
		// 여기서 println() 처럼 사용하는 것을 메서드 라고 한다. 쉽게 말해 '동작'. 
		// 이 때 메서드의 입력 방법은 '접근제어자 + 접근제어옵션 + 리턴타입(출력값) + 메서드명(인자, 파라미터, 아규먼트 ...) 이다.
		// 오라클에서 변수타입이 number, char, varchar2, date, long 등이 사용되었다면
		// 자바에서는 리턴타입이 int, char, string, date, long, void 으로 사용된다.
		// 여기서 리턴타입을 void로 입력하면 값이 존재해도 결과를 출력하지 않는다.
		// 위와 같은 형태의 명령어에서 특정한 기능을 수행하는 것을 '함수' 라고 한다.
		// 함수와 메서드는 다른 명령이다.
		
		int userScore = 100;
		int price = 20000;
		// 단어를 이어서 쓸 때 연결되는 단어의 첫 글자를 대문자로 사용한다.
		
		System.out.println(price);
		
	
	}

}

// 메서드가 동작 이었다면 변수는 메서드를 위해 사용되어지는 값이다.
// 		변수의 타입(Data Type)
// 		문자 - char[2]
// 		숫자 - 정수 - byte[2], short[2], int[4], long[8]
// 		숫자 - 실수 - float[4], double[8]
// 		논리 - boolean(true/false)[1]
// 위에서 언급한 변수의 타입을 Primitive(기본) 타입이라고 한다. 절대로 대문자로 시작하지 않는다.
// 
// 위의 8개를 제외한 모든 타입을 Reference(참조) 타입이라고 한다.
// 주소를 가지고 있으며, 그 주소를 따라가서야 바이트를 확인하는 타입이기에 참조 라고 부른다.
// 참조형 변수의 초기값은 NULL 이다.
//		Date, Member, 
//		String, List, 
//		Set, Map, Array
// 변수 값을 담는 그릇 이름을 '메모리 공간' 이라고 한다. 이 메모리 공간은 무조건 4바이트 이다. 이를 변수명으로 지정한다.
