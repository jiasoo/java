package day07.com.ict.edu2;

import java.util.Scanner;

public class ddd {	
	public static void main(String[] args) {
		/*원하는 회수를 입력 받고 //4
		숫자를 입력 받아서 //3
		입력 받은 숫자가 홀수 인지, 짝수인지 판별하는 코딩
		*/ //숙제
		
		Scanner scan = new Scanner(System.in);
		System.out.print("횟수입력 : ");
		int su = scan.nextInt();
		
		
		String str = "";
		for (int i = 0; i < su ; i++) {
			
			System.out.print("숫자입력 : ");
			int su1 = scan.nextInt();
			
			if (su1%2==0) {
				str = "짝수";
				
			} else {
				
				str = "홀수";
				
			}System.out.println(su1 + "은" + str + "입니다");
		
			
		}
		/*
		이름, 국어, 영어, 수학를 입력 받아서    국어88 영어 92 수학 83
		총점, 평균, 학점을 구하고 .....       90이상 A ,80이상 B , 70이상 C 
		이름, 총점, 평균, 학점을 출력하는 코딩 
		(평균은 소숫점 첫째자리까지 구하자)
		 */ //숙제
		scan = new Scanner(System.in);
		System.out.print("이름 : ");
		String name = scan.next();
		
		System.out.print("국어점수 : ");
		double kor = scan.nextDouble();
		System.out.print("영어점수 : ");
		double eng = scan.nextDouble();
		System.out.print("수학점수 : ");
		double math = scan.nextDouble();
		
		double sum = kor + eng + math ;
		System.out.println("김지수");
		System.out.print("총점 : " + sum+ "\t");
		
		
		double avg = sum/3 ;
		double avg2 = (int)(avg*10)/10.0 ;
		System.out.print("평균 : " + avg2+"\t");
		
		
		if (avg >=90) {
			    System.out.print("A학점");			    
		} else if(avg >=80){
			    System.out.print("B학점");			    
		} else if(avg >=70) {
			    System.out.print("C학점");
	    } else {
	    	    System.out.print("F학점");
	    }
		
	
		/* 
		첫번째 숫자 받기
		두번째 숫자 받기
		연산자 받기("1 => + \n 2 => - \n 3 => * \n 4 =>  / \n>>>>   ")
		*/ //숙제
		
		
		
		
		
	}
}
