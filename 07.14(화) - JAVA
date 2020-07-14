package com.test;

public abstract class Ch07Abstract {
	// 추상클래스 
	// 구체적이지 않은 클래스.
		// 독수리, 타조 ... = 구체적
		// 포유류, 조류 ... = 추상적
	// 내용이 없음. 선언부만 존재하고 구현부가 없음.
	// 본체가 있으면 Abstract 키워드를 가질 수 없음.
	// 인스턴스 변수 가질 수 없음. 하지만 생성자는 가질 수 있음.
	// 자손 메서드에서 상속을 통해 불러오는 방법으로 사용 가능.
	
	// 추상클래스를 만드는 이유
	// 같은 종류의 자손에게서 공통으로 구현될만한 코드를 더욱 쉽게 사용하기 위해 부모로 올려 사용하는 클래스.
	// 즉 일부러 부모클래스로 사용하기 위해 만드는 것.
	
	// 오류 - Ch07Abstract ab = new Ch07Abstract();
	// Abstract(추상) 클래스를 call 하기 위해선 반드시 상속을 해야만한다.
	// 상속 없이 new 연산자를 시행하면 오류를 출력한다.
	
	public Ch07Abstract(){};
		// 추상클래스도 생성자를 가질 수 있다.
		// 클래스가 구동될 때 컴파일러가 자동으로 만들기 때문.
		// 다만 추상클래스는 new 연산자를 사용할 수 없다.
		// 하지만 생성자를 호출하기 위해선 new 를 사용해야만 한다.
		// 만들어지는 이유은 '상속' 때문이다.
			// extends로 추상클래스를 상속받은 자손클래스의 생성자에는 super() 키워드가 숨어있다.
			// 여기서 super는 코딩을 하지 않아도 컴파일러가 자동으로 만드는 생성자 호출 코드이다.
			// 쉽게 말해서 기능이 없더라도 상속 때문에 컴파일러가 자동으로 만들어놓는 것이다.
	
	public abstract int add(int a);
	// 추상클래스는 추상메서드를 가질 수 있다.
	// 가질 수 있다는 것이지 반드시 필요하다는 것은 아니다.
	// 추상메서드란 'abstract 키워드가 붙은 메서드' 를 말한다.
	// 추상메서드는 바디(블럭 {})를 가질 수 없다.
	// 추상메서드가 붙었다면 상속받는 자손클래스는 반드시 '오버라이딩' 을 해야만 한다.
	// 오버라이딩을 통해 추상클래스의 추상메서드의 바디를 완성시켜야 한다.
		// 상속받은 자손클래스에는 @(어노테이션) 을 적어준다.
		// 어노테이션은 뒤로 올 문장을 주석처리한다.
		// 다만 뜻이 '아래의 코딩이 오버라이드 또는 오버라이딩 됐음'을 알리는 기능으로 사용된다.
		// 어노테이션이 적힌 코드는 코드는 건드리지 않고 바디({})만 건드린다.
	
	
	public static void main(String[] args) {

}
	}
	
  
  
  
  
  
  ---------------------------------------------------------
  
  
  
  
  
  package com.test;

import javax.swing.Painter;

interface parentInter{}
interface MyInter1{}
interface MyInter2{
	// 인터페이스는 추상적이고 미완성적인 클래스이다.
	// Abstract Class와 다르다.
	// 깊이를 따지자면 Interface가 더욱 추상적이고 미완성적이다.
	
	public abstract int add1();
	public int add2();
	// 인터페이스에 사용하는 모든 메서드는 abstract 메서드만 가능하다.
	// 그렇기 때문에 abstract를 붙이지 않고 메서드를 만들어도 abstract 메서드 취급을 당한다.
	// 즉 모든 메서드에 바디가 존재해선 안된다.
	// 즉 상속받은 자손클래스는 반드시 오버라이딩 해야만 한다.
	
	int NUM1 = 0;
	public static final int NUM2 = 0;
	// 인터페이스에서 사용되는 변수는 무조건 상수이다.
	// 상수이므로 final 선언을 해줘야한다.
	// 다 같이 사용하므로 접근제어자는 public 이다.
	// new를 통해 연산자로 올려야 사용이 가능하자, 인터페이스는 연산자를 사용할 수 없으므로 static이 선언되어야한다.
	// 사실 public static final 을 선언해주지 않아도 알아서 그렇게 인식한다.
	
}



public class Ch07InterImpl implements MyInter1, MyInter2{
	// 인터페이스는 class와 달리 다중 상속이 가능하다.
	// class 상속에서 extends 키워드를 사용했다면, Interface는 implements 키워드를 사용한다.
	// 상속을 주는 인터페이스에 메서드가 존재한다면, 상속받는 자손클래스는 무조건 메서드를 오버라이딩 해야만한다.
	// 값을 변경하지 않더라도 오버라이딩을 해줘야만 한다.
	
	
	@Override
	public int add1() {
		return 0;
	}

	@Override
	public int add2() {
		return 0;
	}
	
	

}





-------------------------





package com.test;
import com.web.Test;
import com.web.HelloWorld;
import java.util.Date;
	// 다른 패키지에 있는 클래스를 가져오는 명령문.
	// 내 패키지 하위 폴더에 다른 패키지의 하위 폴더를 복붙하여 사용하는듯한 효과를 볼 수 있다.
	// 만약 .Test가 아니라 .* 을 사용하면 다른 패키지의 하위 폴더를 모두 가져온다.
	// 만약 import com.* 이면 com에 있는 클래스를 가져온다.
	// 이 때 com.test에 있는 클래스는 가져오지 않는다.
	// 일반적으로 수십 수백개의 클래스가 있으므로, *은 사용하지 않고 필요한 파일만 가져온다.
	// 따라서 필요한 파일만 import로 나열하면 된다.
	// static으로 선언된 멤버 또는 변수 또한 import 할 수 있다.
		


public class Ch07Package {

	public static void main(String[] args) {
		Test t = new Test();
		t.myPrint(11);
		
		Date d = new Date();
		System.out.println(d.getYear());

	}

}
