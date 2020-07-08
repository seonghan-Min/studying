package com.test;

public class Ch02Variable {
	// 전역변수(다른 말로 '멤버변수'. 클래스 영역에서 사용되는 변수.)
	// 전역변수는 별도의 값을 지정하지 않더라도 기본값으로 자동 초기화되기 때문에 바로 사용 가능하다.
	// java에서는 '전역' 이라는 말을 사용하지 않는다. 대신 아래의 두 가지로 나뉘어서 사용한다.	
	// ★인스턴스 변수
		// class 영역에서 선언된 변수 중 '인스턴스화가 필요한' 변수.
		// 인스턴스 변수는 힙(Heap) 영역에 메모리가 할당된다.
		// 인스턴스 변수를 메모리에 할당하는 방법은 두 가지 방법(static, new)이 있다.
			// static : 선언되는 순간 클래스 변수로 지정된다.
			// new : class 영역에 새로운 class 영역을 생성한다.
			// new 명령은 첫 글자가 대문자로 시작하여 클래스 명과 동일하게 제작된다.
			// new 명령을 '생성자 함수' 라고 말한다.
			// new 명령으로 생성한 영역에는 클래스 변수를 제외한 나머지 변수가 할당된다.
		// 힙(Heap) 영역에서 메서드를 실행시키면 새로운 스택(Stack) 영역을 임의로 생성한다.
		// 생성한 스택(Stack) 영역에서 매서드를 실행시킨 뒤 return 값을 도출한다.
		// 도출된 값을 다시 힙(Heap) 영역으로 가져와 출력시킨 뒤 스택(Stack) 영역을 휘발시킨다.
	int iv = 100;
	public int add(int a, int b) {
		System.out.println(cv);
		System.out.println(iv);
		int res = a + b;
		return res;
	}	
	
	// ★클래스 변수
		// class 영역에서 선언된 변수 중 'static' 으로 설정된 변수.
		// 클래스 변수는 MethodArea 영역에 메모리가 할당된다.
		// MethodArea 영역은 한 번 할당되면 클래스가 끝날 때 까지 계속해서 할당된 값을 기억하는 영역이다.
	static int cv = 300;
	public static void main(String[] a) {
		
		System.out.println(Ch02Variable.cv);
		System.out.println(cv);
		
		Ch02Variable ch = new Ch02Variable();
		System.out.println(ch.cv);
		System.out.println(ch.iv);
		ch.add(1, 2);
		
		Ch02Variable ch2 = new Ch02Variable();
		ch2.iv = 3333;
		System.out.println(ch.iv);
		System.out.println(ch2.iv);
	}
	
	
	
	
	public static void nomain() {
	// 지역번수(local variable. 매서드 안에서 사용되는 변수.)
	// 지역변수는 사용되기 전에 반드시 초기화해야한다.
	// 초기화 값 없이 바로 사용하면 에러를 출력한다.
		
		
	// ★ 변수 선언 = 값을 할당한다는 의미.
	// ★ 초기화한다 = 최초로 값을 할당한다 라는 의미.
	// ★ 변수타입 없이 변수명을 다시 언급하여 값을 지정해주는 행위를 '값을 재할당한다' 라고 칭한다.
		
		// 기본 변수_논리타입
		// 초기값은 공백으로 출력되며, ' ' 처럼 띄어쓰기로 표시한다.
		// 공백을 굳이 표시하고 싶다면 유니코드 '\u0000' 으로 표기할 수 있다.
		// ture/false를 소문자로 사용해야한다. 대문자로 사용하면 알파벳 다섯 개의 글자로 인식하여 에러를 출력한다.
		boolean isCheck = false;
		
		
		// 기본 변수_글자타입
		// char은 2바이트 이므로 한 글자만 허용한다. 그 이상은 에러를 출력한다.
		// 한 글자 이상을 사용하기 위해선 char 대신 참조변수 String 을 사용해야한다.
		// 참조변수는 기본변수와 달리 주소를 할당하는 방법이기 때문에 값을 재할당하면 주소 또한 재할당된다.
		// 즉 할당 전과 할당 후의 주소가 서로 다르기 때문에 혼동하면 안된다.
		char ch = '나';
		String str = "나는요"; 
		str = "저는요";
		
		
		// 기본 변수_정수타입
		// 정수의 초기값은 0 이며, 디폴트 값은 int 이다.
		// long을 사용하기 위해선 정수 뒤에 L(리터럴)을 따로 표기해줘야만 한다.
		// byte는 1바이트 = 8비트이며, 페리티에 할당되는 1비트를 제외한 7비트에 대해 2^7-1=127 까지 크기를 허용한다.
		// 마찬가지로 short는 2바이트=16비트이며, 페리티를 제외한 15비트에 대해 2^15-1=32767 까지 크기를 허용한다.
		byte btnum = 127;
		short stnum =32767;
		int intnum = 10;
		long longnum = 1000L;
		
		
		// 기본 변수_실수타입
		// 실수의 초기값은 0.0이며, 디폴트 값은 double 이다.
		// float을 사용하기 위해선 실수 뒤에 f(리터럴)를 따로 표기해줘야만 한다.
		// long 은 8바이트, float 는 4바이트로 long 이 더 커보이지만 수 개념 자체는 float이 실수로 정수인 long 보다 크기 때문에 float이 더 크다. 
		float floatNum = 44.0f;
		double doubleNum = 99.0;
		
		
		// 참조 변수_String
		// char이 2비트로 한 글자만 사용 가능하다면, String은 그 이상의 글자를 사용할 수 있다.
		// 
		String initstr = null;
		String ss = "A"+"B";
		
		
		//상수 : 고정값 (한 번 값을 할당하면(초기화 하고나면) 값을 변경 불가한 값을 의미)
		//		개발자에게 명확하게 알리기 위해 대문자_대문자 사용.
		//		이 때 사용하는 특수기호가 언더바(_) 또는 달러($)
		//		상수를 알리기 위해 final 키워드 사용.
		//		final 변수타입 대문자변수명 = 값;
		//		재할당 불가능.
		final String $ORACLE_SID = "xe";
		final int USER_POINT = 1000;
	
		
	}

}






------------------------------





package com.test;

public class Ch02Method 
{
	// main 메서드.
	// showResult 메서드 출력.
	// add 메서드 출력.
	public static void main(String[] args) 
	{
		
		showResult();
		int res = add(3,5);
		System.out.println(res);
		
	}


	// 접근제어자 public
	// 리턴타입 int
	// 메서드 명 add
	// 파라미터 정수 2개
	// 숫자a 와 숫자b 를 더한 결과를 int 타입으로 리턴
	public static int add(int a, int b) 
	{
		
		int result = a + b;
		return result;	
		
	};
	
	
	// 접근제어자 public
	// 리턴타입 없음
	// 매서드명 showResult
	// 파라미터 없음
	public static void showResult()
	{
		
		int res = add(2,4);
		System.out.println(res);
		System.out.println(6);
		System.out.println(add(2,4));
		
	}
	
}
