package day04.co.ict.edu;

public class Ex01_oper {
	public static void main(String[] args) {
		// 삼항 연산자 : 조건식 => 조건이 참 일때와 거짓 일때 를 구분해서 실행한다.
		// 형식) 자료형 변수이름 = (조건식) ? 조거식이 참일때 실행할 문장 : 조건식이 거짓일때 실행할 문장 ;
		// **주의사항) 변수, 참일때 실행 결과, 거짓일때 실행 결과 모두 같은 자료형이어야 한다.
		//           참일때 결과 거짓일때 결과 각 상황에 구분해서 실행 
		// 조건식에는 boolean (true,false), 비교연산자, 논리연산자
		// String str = (true) ? "" : "" ; (같은자료형)
		
		
		String str = (false) ? "강아지" : "고양이" ;
		System.out.println("결과2 : " + str);
		
		// int avg = 80 ;
		double avg = 85.3 ;
		str = (avg >=60 ) ? "합격"  : "불합격" ;
		System.out.println("결과3 : " + str);
		
		
		char c1 = 'G' ;
		str = (c1 >='a' && c1 <= 'z') ?  "소문자" : "소문자 아님" ;
		System.out.println("결과4 : " + str);
		
		// 1 또는 3 이면 남자, 아니면 여자 
		int gender = 1 ;
		str = (gender == 1 || gender == 3) ? "남자" : "여자" ;
		System.out.println("결과5 : " + str);
		
		// 홀수이면 남자, 짝수이면 여자
		gender = 4 ;
		str = (gender % 2 == 1) ? "남자" : "여자" ;
		System.out.println("결과5 : " + str);
		
		// 3의 배수인지 아닌지 알아보자
	    int su1 = 157 ;
	    str = (su1 % 3 == 0) ? "3의배수" : "3의배수가 아니다" ;
	    System.out.println("결과5 : " + str);
	    
	    
	    System.out.println("===================");
	    
	    int k1 = 21 ;
	    str = (k1%2==1) ? "홀수" : "짝수";
	    System.out.println("결과5 : " + str);
	    
	    
	    // 157이 3으로 나눈 나머지가 0이면 3의배수
	    
	    
	
		
	   
	    
	     int s = 8 ;
	     int work = 10 ;
         int a = 9620 ;
         int money  = (work <= s) ? (a*s) : ((a*s)+(int)((work-s)*a*1.5)) ; 
         System.out.println(money);
         
         int time = 10 ;
         int dan = 9620 ;
         
         int pay = (time > 8 ) ? (8*dan)+(int)((time-8)*dan*1.5) : time*dan;
        		 System.out.println("결과 :" + pay);
        		 
        		 int num1 = 47 ;
        		 int num2 = 32 ;
        		 int res = (num1 > num2) ? num1    : num2     ;
        		 System.out.println("큰값 :" + res);
        		 // 부등호 바꾸면 작은값
        		 
        		 int res2 = Math.max(num1, num2) ;
        				 System.out.println("큰값 :" + res2);
        				 // 절대값 양수*양수=양수 , 양수*음수=양수
        				 int res3 = -38 ;
        				 int res4 = (res3 > 0) ? res3 : res3*-1 ;
        				 System.out.println("큰값 :" + res4);
        				 
        				 int res5 = Math.abs(res3);
        				 System.out.println("큰값 :" + res5);
        				 
        				 
        				 
        		 
	    
	    
	    

		
		
		
		
		
		
	
		
		
		
		
	}
}
