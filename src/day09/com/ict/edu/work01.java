package day09.com.ict.edu;

public class work01 {
public static void main(String[] args) {
//	(2 번) - * if~ else문 사용
//	농구공 5개씩 한 박스에 들어간다. 
//	 40개면 8상자,  26개면 6개이다.
//   int k1 =127	
	System.out.println("2번 문제 : ");
		int k1 = 127 ;
		int box = 5;
		int total = 0;
			if(k1%box==0) {
				total = (k1/box);
				
			}else {
				total = (k1/box)+1;
			}
				System.out.println(total);
	
	System.out.println("==================================");

//
//	(3 번) - * for문으로 풀기
//	0 0 0 0
//	0 0 0 0
//	0 0 0 0
//	0 0 0 0
		for (int i = 1; i < 5; i++) {
			System.out.println("0 0 0 0");
		}
	
	
	System.out.println("==================================");
//
//	(4 번) - * 이중 for문으로 풀기
//	1 0 0 0
//	0 1 0 0
//	0 0 1 0
//	0 0 0 1
		for (int i = 1; i <5; i++) {
			for (int j = 1; j < 5; j++) {
				if(i==j) {
					System.out.print(1);
				} else {
					System.out.print(0);
				}	
			}
			System.out.println();
		}
	
		
	
	System.out.println("==================================");

//
//	(5 번) - * for문 
//	1+(-2)+3+(-4)+... 과 같은 식으로 계속 더해나갔을 때,  몇까지 더해야 총합이 100이상이 되는지 구하시오.
	//홀수 양수 짝수 음수 , 
	System.out.println("5번 문제 : ");
		int sum = 0;
		for (int i = 0; i < 100 ; i++) {
			if (i%2==1) {
				System.out.println();
			} else {
				System.out.println();
			}
		}
		

	
	System.out.println("==================================");
	System.out.println("5번 문제 번외 : ");
	
	int i_9 = 1;
	int sum_9 = 0;
	
	loop:
	for (i_9 = 1; i_9 <= 500; i_9++) {
		if (i_9 % 2 == 0) {
			sum_9 = sum_9 + (int)(i_9 * -1);
			}
		else 
			sum_9 = sum_9 + i_9; 
			if (sum_9 >= 100) {
				break loop;   
			}
	}
	System.out.println("합한 결과는 : " + sum_9 + "입니다.");			
	System.out.println("마지막 더한 숫자는 : " + i_9 + "입니다.");
	
	
	System.out.println("==================================");
//
//	(6 번) - * for문 
//	*
//	* *
//	* * *
//	* * * *
	
	
	
	System.out.println("==================================");
	
//
//	(7 번) - * for문 
//	      *
//	    * *
//	  * * *
//	* * * *
	
	System.out.println("7번 문제 : ");
	
	
	
	}
}


