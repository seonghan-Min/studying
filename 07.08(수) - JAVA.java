package com.test;

public class Ch02VariableCasting {

	public static void main(String[] args) {
		// 형변환(Casting) - 변수의 타입을 다른 타입으로 바꾸는 명령.
		// 오른쪽에 있는 변수를 왼쪽에 있는 변수에다가 집어넣는 식의 구조.
		// 예 : 정수타입 변수 (byte -> short -> int -> long)
		// 작은 타입(int) 에서 큰 타입(long) 으로 갈 때는 캐스팅 생략 가능.
		// 큰 타입(int) 에서 작은 타입(short) 로 갈 때는 캐스팅 표기 필수.
		// 큰 타입(int) 에서 작은 타입(short) 로 갈 때는 원본 값이 변경될 소지가 충분하므로 주의.
		int intNum = 5;
		long longNum = intNum;
		short shortNum = (short)intNum;
		
		// 예 : 정수 및 실수타입 변수 (int -> float)
		// 작은 타입(int) 에서 큰 타입(float) 으로 갈 때는 캐스팅 생략 가능.
		// 큰 타입(float) 에서 작은 타입(int) 로 갈 때는 캐스팅 표기 필수.
		float floatNum1 = 22.0F;
		float floatNum2 = intNum;
		intNum = (int)floatNum2;
		
		// 예 : 실수타입 변수 (float -> double)
		// 큰 타입(double) 에서 작은 타입(float) 으로 갈 때는 캐스팅 표기 필수.
		float floatNum3 = (float)44.0;
		
		// 예 : 숫자 및 글자 타입 변수(char(2) -> int(4))
		// 큰 타입(int, 4바이트) 에서 작은 타입(char, 2바이트) 로 갈 때는 캐스팅 표기 필수.
		// char은 2바이트 = 2^7-1 = 127 까지 이므로, 글자는 바꾸지만 단어는 바꿀 수 없다.
		// A = 65, a = 97 정도는 기억해놓도록 하자.
		// 숫자를 글자로 캐스팅하면 아스키 코드에 의해 해당되는 숫자가 가르키는 글자를 나타낸다(65 -> 아스키코드 A).
		// 반대로 글자를 숫자로 캐스팅하면 아스키 코드에 의해 해당되는 글자가 가르키는 숫자를 나타낸다(아스키코드B -> 66).
		char ch1=' ';
		char ch2='B';
		int chIntNum= 65;
		ch1 = (char)chIntNum;
		chIntNum = ch2;
		System.out.println(ch1);
		System.out.println(chIntNum);
		

	}

}






------------------------------





package com.test;

public class Ch03Operation {
	static String ename;

	public static void main(String[] args) {
		// ==(자바), =(오라클)
		// !=(자바, 오라클)
		
		
		// 연산자 (+, -, *, /, %(나머지))
		// %(나머지) 는 나누고 난 나머지를 출력한다.
		// %2 가 0이면 짝수, 1이면 홀수를 구할 수 있다.
		// 서로 다른 타입을 연산했을 때 출력되는 값의 타입은 연산 내용 중 큰 타입을 따라간다.
		// JAVA는 + 기호를 || 와 같이 인식한다. 다만 숫자는 연산한다.
		int res = (4 + 3) * 2;
		System.out.println(5%3);
		System.out.println(1%3);
		System.out.println('A' + 1);
		System.out.println(10.2F + 3);
		System.out.println("Hello" + 3);
//error	System.out.println(true + 3);
		System.out.println(true + "3");
		System.out.println(3 + "A" + 4);
		System.out.println(3 + 4 + "A");
		
		
		// 참조변수 String 연산
		// String 값을 초기화 시키지 않았으므로 null 값을 출력한다.
		// String 의 타입이 문장이므로 무엇을 더하던 문장 타입으로 출력된다.
		System.out.println(ename);
		System.out.println(ename + "A");
		System.out.println(ename + 3);
		
		
		// 증감 (++, --)
		// 증감 기호가 앞에 붙으면 '전위', 뒤에 붙으면 '후위'
		// 전위연산자는 증감한 값을 대입.
		// 후위연산자는 대입 후 값을 증감.
		int i1 = 5, i2 = 5;
		int j1 = 0, j2 = 0;
		j1 = ++i1;
		j2 = i2++;
		System.out.println("i1 = "+i1+", j1 = " +j1);
		System.out.println("i2 = "+i2+", j2 = " +j2);
		
		
		// 부정!
		boolean isCheck = false;
		System.out.println(isCheck);
		System.out.println(!isCheck);
		
		
		// 삼항연산자
		// 조건식 ? 참 : 거짓
		// 조건식 상관없이 참거짓의 타입에 맞도록 연산자이름을 설정해줘야한다.
		int score = 90;
		char s1 = score>50?'A':'B';
		int s2 = score>50?1000:500;
		String s3 = score>50?"크다":"작다";
		String s4 = score>90? (score>95?"A+":"A0"):"B";
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		System.out.println(s4);
		
		
		// 대입연산자
		// 동일한 값을 다시 초기화하고 싶을 때 사용하는 방법.
		// += 기호를 사용하면 똑같은 내용을 출력할 수 있따.
		int point1 = 10;
		int point2 = point1 + 3;
		point1 = point1 + 3;
		point1 +=3;

	}

}





------------------------------





package com.test;

public class Ch04IfSwitch {

	public static void main(String[] args) {
		// if 		: case when then (범위비교)
		// switch 	: decode (떨어지는 값 비교)
		int score = 92;
		String res = score>90?"A":"B";

		// if 문
		// if (조건) 참값; else 거짓값;
		// else까지 갈 필요 없이 차례대로 내려가다가 만족하는 값을 찾는 순간 바로 if문을 끝낸다.
		if (score>90) {
			res = "A";
			System.out.println("AAAA");
		}else if (score>80) {
			res = "B";
		}else if (score>70) {
			res = "C";
		}else
			res = "F";

		
		// 예제
		// 앵간하면 if문을 사용하기 때문에
		// 그냥 문법이 이렇다 라는 것만 알고 넘어가자.
		switch(score) {
			case 90:
				System.out.println("AA");
				break;
			case 80:
				System.out.println("BB");
				break;
			default :
				System.out.println("CC");
		}

		
		// 예제
		// 점수가 60점이고 남성이면 가산점, 아니면 기타 출력.
		// 조건에 두 가지를 걸고 싶으면 and, or 를 사용해야한다.
		// &&(and), ||(or)
		score = 60;
		char gen = 'm';
		if (score>=80 || gen=='m') {
			System.out.println("가산점");
		} else {
			System.out.println("기타");
		}
		
		
		// 예제
		// 조건이 참이면 11111 아니면 22222.
		// boolean 으로 논리변수를 초기화했기 때문에
		// 조건에 '변수 이름' 만 넣어주면 자동으로 초기화를 찾아 수행한다.
		boolean isCheck = true;
		if(isCheck) {
			System.out.println("11111");
		} else {
			System.out.println("22222");
		}
		
		
		// 예제
		// 부서번호가 10이면 영업, 아니면 개발 출력.
		// 조건 안에 '~~와 같다면' 을 사용하고 싶은 경우
		// = 이 아닌 == 를 사용해야 한다는 점에 주의하자.
		// = 는 '~~를 집어넣어주세요' 라는 뜻을 가진 초기화 명령이다.
		int deptno = 10;
		if(deptno == 10) {
			System.out.println("영업");
		} else {
			System.out.println("개발");
		}
		
		
		// 예제
		// 설적이 90 이상이면 A
		// 성적이 80 이상이면 B
		// 그 외에는 F
		if(score>90) {
			System.out.println("A");
		} else if(score>80){
			System.out.println("B");
		} else {
			System.out.println("F");
		}
		
		
		// 예제
		// 성적이 90 이상이고 남성이면 A+, 여성이면 A0
		// 성적이 80 이상이고 남성이면 B+, 여성이면 B0
		// 그 외에는 F
		if(score>90) {
			if(gen == 'm') {
				System.out.println("A+");
			} else {
				System.out.println("A0");
			}
			
		} else if(score>80) {
			if(gen == 'm') {
				System.out.println("B+");
			} else {
				System.out.println("B0");
			}
		} else
			System.out.println("F");
		
		
		// 예제
		// 입력된 num 값에 따라 홀수 또는 짝수 출력.
		int num = 11;
		if (num%2 == 0) {
			System.out.println("짝수");
		} else {
			System.out.println("홀수");
		}

		
		
		
		
		
		
		
}
}
