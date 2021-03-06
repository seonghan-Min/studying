package com.test;

public class Ch05Loop {

	public static void main(String[] args) {
		// Loop 문 = 반복행위
			// for(초기값; 조건문; 증감값) { ... }
				// i는 1부터 10까지 1씩 증가하여 출력.
				for(int i=1 ; i<=10 ; i++) {
					System.out.println(i);
				}

				
				// 예제
				// i는 10 부터 1까지 1씩 감소하여 출력.
				for(int j=10 ; j>=1 ; j--) {
					System.out.println(j);
				}
				

				// 예제
				// i는 1 부터 10까지 홀수만 출력.
				for (int i=1 ; i<=10 ; i+=2) {
					System.out.println(i);
				}
				

				// 예제
				// i 는 1부터 10까지 값이 짝수이면 짝수, 홀수이면 홀수 출력
				for (int i=1 ; i<=10 ; i++) {
					if (i%2==0) {
						System.out.println("짝수");
					} else {
						System.out.print("홀수");
					}
				}
				

				// 예제
				// i는 65부터 69까지 글자로, j는 1부터 3까지 숫자로 출력.
				// \t 는 tab 을 의미한다
				for(int i=65 ; i<=69 ; i++) {
					System.out.print((char)i + "\t");
					for(int j=1 ; j<=3 ; j++) {
						System.out.print(j + "\t");
					}
					System.out.println();
				}
				
				System.out.println("--------------------");
				

				// 예제 - 구구단
				for(int i=1 ; i<10 ; i++) {
					for(int j=1 ; j<10 ; j++) {
						System.out.println(i + "x" + j + " = " + i*j);
					}
					System.out.println("--------------------");
				}
				

				// 예제 - 별 찍기
				for (int i=1 ; i<5 ; i++) {
					for (int j=1 ; j<=i ; j++) {
							System.out.print("*");
					} System.out.println(" ");
				} System.out.println("--------------------");
				

				// 예제 - 별 찍기
				for (int i=4 ; i>=1 ; i--) {
					for (int j=1 ; j<=i ; j++) {
						System.out.print("*");
					}System.out.println(" ");
				} System.out.println("--------------------");
				

				// 예제 - 별 찍기
				for (int i=1 ; i<=4 ; i++) {
					for (int j=1 ; j<=4 ; j++) {
						if (j>=i) {
							System.out.print("*");
						} else System.out.print(" ");
					}System.out.println(" ");
				} System.out.println("--------------------");
				
				
				// 예제 - 별찍기
				   for(int i=1 ; i<=4 ; i++) {
			            for(int k = 1 ; k<i ; k++) {
			               System.out.print(" ");
			            }
			            
			            for(int j = 4 ; j>=i ; j--) {
			               System.out.print("*");
			            }
			           System.out.println();
			         } System.out.println("--------------------");
			         
			         
				
		
		
			// while (조건식) { ... }
			// 명확히 Loop 횟수가 정해져 있으면 for 문을 사용한다.
			// 그와 반대로 '특정 조건을 만족' 시켜야만 Loop에서 빠져나오게끔 하는 명령이 while 이다.
			         int count = 10;
			         while (true) {
			        	 System.out.println(count);
			        	 count--;
			        	 if(count==0)
			        		 break;
			         } System.out.println("done");
			         System.out.println("--------------------");
			         

			         //예제
			         count = 10;
			         while(count>0) {
			        	 System.out.println(count);
			        	 count--;
			         }System.out.println("done");
			         System.out.println("--------------------");
			         

			// do { ... } while (조건식) 
			// do 뒤에 조건이 있기 때문에 do로 인해 무조건 1 번은 실행된다.
			         // 예제
			         count = 5;
			         do {
			        	 System.out.println(count);
			        	 count--;
			         } while (count > 0);
			         System.out.println("-----done-----");
			         

			         // 예제 1
			         int i=1;
			         while(i<=5) {
			        	 System.out.println(i);
			        	 ++i;
			         }System.out.println("--------------------");
			         

			         // 예제 2
			         i=0;
			         do {
			        	 i++;
			        	 System.out.println(i);
			         } while (i<=5);
			         System.out.println("--------------------");
			         

			         // 예제 3
			         i=1;
			         for( ; i<=(5%10) ; i++) {
			        	 System.out.println(i);
			         }System.out.println("--------------------");
			         

			         // 예제 4
			         i=1;
			         while(i<=5) {
			        	 System.out.println(i);
			        	 i++;
			         }System.out.println("--------------------");
	}

}







------------------------------




package com.test;

public class Ch06Array {

	public static void main(String[] args) {

		// 배열(array) 	: 같은 타입의 여러 변수를 하나의 묶음으로 다루는 것.
		// 인덱스(index)	: n번째 요소(방)를 가르키는 번호. 0부터 시작한다.
		// 길이(Length) 	: 변수의 개수 (0번째 방 부터의 길이)
		int score1;		// int 타입
		int[] score2;	// int 배열 선언
		
		
		// 위의 명령은 배열을 '선언' 만 한 상태이다.
		// 선언만 한 상태는 메모리에 올라가지 않는다.
		// 배열을 메모리에 올리기 위해선 '이 배열의 크기가 몇인지' 를 알아야만 한다.
		// 크기를 지정해서 성성한 배열의 타입은 '참조타입' 이다.
		// 참조타입의 기본값은 '주소' 이므로 point는 어느 주소를 알아야만 한다.
		// 이 때 point가 가지는 주소는 '0번째 배열 방' 의 주소이다.
		// 다만 별도의 값을 초기화 시키진 않았기에 이를 print하면 type의 기본값을 출력한다.
		int[] point = new int[5];
		boolean[] point2 =  new boolean[5];
		String[] point3 = new String[0];
		System.out.println(point[1]);
		System.out.println(point2[3]);
		System.out.println("--------------------------");
		
		
		// 배열에 값을 할당(초기화) 하는 방법이다.
		// 1. 하나하나 배열의 값을 등록시켜준다.
		// 2. for문을 이용하여 같은 값을 전부 넣어준다.
		// 3. new를 통해 메모리를 올린 뒤 한 번에 명령한다.
		point[1] = 50;
		point[2] = 100;
			
		for(int i=0 ; i<5 ; i++) {
		point[i] = 50;
		}
		
		int[] point4 = new int[] {100,90,40,30,20};
		int[] point5 = {100,90,40,30,20};
			
		// 일반적으로 변수타입_변수명을 입력하여 변수를 선언한 뒤
		// 한 줄을 넘겨서 값을 따로 초기화를 해줘도 정상구동이 됐었지만 배열타입은 다르다.
		// 배열타입의 초기화를 위해서는 new를 사용해야한다.
		// 예외적으로 'point5' 의 방법은 new 없이 초기화를 할 수 있다.
		// new를 사용하여 메모리를 할당해야만 하기 때문이라고 생각하자.
			/*int[] score3;
			score = {100,90,40,30,20};*/
		
		
		
		// 일괄 출력
		// 시작 0 종류 length
		for(int i=0 ; i<5 ; i++) {
			point[i] = i*10;
		} System.out.println(point[0]);
		System.out.println("--------------------------");
		
		
		for(int i=0 ; i<point.length ; i++) {
			System.out.println(point[i]);
		}System.out.println("--------------------------");
		
		
		// 예제 - 알파벳 출력. 배열 및 for문 사용.
		char alphabet = 65;
		char[] arrayAlph = new char[26];
		for(int i=0 ; i<arrayAlph.length ; i++) {
			arrayAlph[i] = alphabet;
			System.out.println(arrayAlph[i]);
			alphabet++;
		}System.out.println("--------------------------");
		
		
		char alph2[] = new char[26];
		for(char c='A' ; c<='Z' ; c++) {
			System.out.println(c);
		}System.out.println("--------------------------");
		
		
		// 예제 - 구구단 출력. 배열 사용.
		int[] gg1 =  {1,2,3,4,5,6,7,8,9};
		int[] gg2 =  {1,2,3,4,5,6,7,8,9};
		for (int i=0 ; i<gg1.length ; i++) {
			System.out.println("=====" + i + "단=====");
			for (int j=0 ; j<gg2.length ; j++) {
				System.out.println(gg1[i] + " x " + gg2[j] + " = " + gg1[i]*gg2[j]);
			}
		}
		System.out.println("--------------------------");
		
		
		// 예제 - 구구단 출력. 배열 사용.
		int[] ggg1 = new int[9];
		int[] ggg2 = new int[9];
		for (int i=1 ; i<ggg1.length ; i++) {
			System.out.println("=====" + (i+1) + "단=====");
			ggg1[i] = i+1;
			for (int j=0 ; j<ggg2.length ; j++) {
			ggg2[j] = j+1;
			System.out.println(ggg1[i] + " x " + ggg2[j] + " = " + ggg1[i]*ggg2[j]);
			}
		}
		System.out.println("--------------------------");
		
		
		// 다차원 배열
		// 배열에서 나타내는 [] 기호의 의미 = 차수
		// Data_Type[]	 - 1차원 배열 변수타입
		// Data_Type[][] - 2차원 배열 변수타입
		// 이 때 첫 번째 괄호가 [행] 두 번째 괄호가 [렬] 을 의미한다.
		// 이도 행렬과 같이 0부터 시작한다.
		// 87의 경우 [3,2] 가 아니라 [2][ 1]
		int[][] scores = new int[3][4];
		scores = new int[][]{
				{100,100,100},
				{90,98,94},
				{86,87,88},
				{76,77,78}};
		System.out.println(scores[0].length);
		System.out.println("--------------------------");
		
		
		// 각 학생별 평균과 합, 국영수 과목별 평균과 합을 구하시오
		int sumObj1=0;
		int sumObj2=0;
		int sumObj3=0;
		for(int i=0 ; i<scores.length ; i++) {
			for(int j=0 ; j<scores[i].length ; j++) {
				if(j==0) {
					sumObj1 += scores[i][j];
				} else if (j==1) {
					sumObj2 += scores[i][j];
				} else if (j==2) {
					sumObj3 += scores[i][j];
				}
			}
		}
		System.out.println("첫 번째 과목 합 = " + (sumObj1) + ", 두 번째 과목 평균 = " + (sumObj1)/scores.length);
		System.out.println("두 번째 과목 합 = " + (sumObj2) + ", 두 번째 과목 평균 = " + (sumObj2)/scores.length);
		System.out.println("세 번째 과목 합 = " + (sumObj3) + ", 두 번째 과목 평균 = " + (sumObj3)/scores.length);
		System.out.println("--------------------------");
		
		
		
		
		
		
		int sum1A=0;
		int sum2A=0;
		int sum3A=0;
		int sum4A=0;
		for (int i=0 ; i<scores[0].length ; i++) {
			sum1A = scores[0][i];
			sum2A = scores[1][i];
			sum3A = scores[2][i];
			sum4A = scores[3][i];
		}
		System.out.println("학생 1의 총점은 = " + (sum1A) + ", 평점은 = " + (sum1A/scores[0].length));
		System.out.println("학생 2의 총점은 = " + (sum2A) + ", 평점은 = " + (sum2A/scores[0].length));
		System.out.println("학생 3의 총점은 = " + (sum3A) + ", 평점은 = " + (sum3A/scores[0].length));
		System.out.println("학생 4의 총점은 = " + (sum4A) + ", 평점은 = " + (sum4A/scores[0].length));
		System.out.println("--------------------------");
		
		
		
		int[][] scoress = new int[][] 	{{100, 100, 100}, 
									{90, 98, 94}, 
									{86, 87, 88},             
									{76, 77, 79}}; 
		int sum=0;
		System.out.println("-----------학생별 평균-----------");


		for (int x=0; x<scoress.length; x++) {
			for (int y=0; y<scoress[0].length; y++) {
				sum += scoress[x][y];
				}
			System.out.printf("%d번째 학생 점수 총합 : %d, 평균 : %d\n", x+1, sum, sum/scores[0].length);
			sum = 0;
			}
           
			System.out.println("-----------과목별 평균-----------");

			for (int x=0; x<scoress[0].length; x++) {
				for (int y=0; y<scoress.length; y++) {
					sum += scoress[y][x];
					}
				System.out.printf("%d번째 과목 점수 총합 : %d, 평균 : %d\n", x+1, sum, sum/scores.length);
				sum = 0;
				} 
		
			
		System.out.println("--------------------------");
		
		
		// 가변배열
		// 배열이 정사각형으로 나오는 것이 아닌, 각 배열마다 배열의 개수가 다른 배열.
		// 현업에선 업는 공간에 0을 채워놓지, 굳이 가변화시키진 않는다.
		// 자주 쓰는 형태가 아니지만 알고 있으면 좋긴 하다.
		
		
		
		


		
}			
}			


------------------------------------------------------------------------------------




package com.test;

public class Ch06ArrayLotto {

	public static void main(String[] args) {
		
		// 숫자 랜덤으로 뽑기
		double res = Math.random();
		System.out.println("0부터 10 사이의 임의의 수 = "+ (res*10));
		System.out.println("1부터 45 사이의 임의의 수 = " + (res*45));
		
		
		System.out.println();
		System.out.println("-----------------------------");
		System.out.println();
		
		
		// 숫자 6개 랜덤으로 뽑기
		for (int i=0 ; i<6 ; i++) {
			res = (Math.random()*45)+1;
			System.out.print("[" + ((int)res) + "]");
		}
		
		
		System.out.println();
		System.out.println("-----------------------------");
		System.out.println();
		
		
		// Lotto 번호 뽑기
		// 중복 제외
		int[] lotto = new int[6];
		for (int i=0 ; i<lotto.length ; i++) {
			lotto[i] = (int)(Math.random()*45)+1;
			for (int j=0 ; j<i ; j++) {
				if (lotto[i] == lotto[j]) {
					i--;
		}
		}
		}
		System.out.println("이번 주 로또 번호");
		for (int i=0 ; i<lotto.length ; i++) {
			System.out.print("[" + lotto[i] + "]");
		}
		
		
		System.out.println();
		System.out.println("-----------------------------");
		System.out.println();
		
		
		// 활용
		// 다음 arr의 값만큼 * 출력
		int[] arr= {1,4,4,3,1,6};
		for(int i=0 ; i<arr.length ; i++) {
			for (int j=0 ; j<arr[i] ; j++) {
				System.out.print("*");
				
			}System.out.println();
		}
		
		
		System.out.println();
		System.out.println("-----------------------------");
		System.out.println();
		
		
		// 예제
		// 40~100 사이의 임의의 숫자 6개 받아서 합/평균 출력
		// math.random 사용
		double grade = Math.random();
		int[] gradeArray = new int[6];
		int sum = 0;
		for (int i=0 ; i<gradeArray.length ; i++) {
			gradeArray[i] = (int)(Math.random()*60)+40;
			System.out.print("[" + gradeArray[i] + "점" +"]");
			sum += gradeArray[i];
		}
		System.out.println();
		System.out.println("각 점수의 합은 = " + (sum));
		System.out.println("각 점수의 평균은 = " + (sum/gradeArray.length));
		
		
		System.out.println();
		System.out.println("-----------------------------");
		System.out.println();
		
		
		
		
	

	}

}



