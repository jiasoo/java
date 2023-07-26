package day12.com.ict.edu;

import java.util.Scanner;

public class Ex09_main {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);

		// Ex08_method로 만들어진 객체만 저장하는 배열(객체형 배열=참조자료형 배열)
		// int[] k1 = new int[] ;
		Ex09_Constructor[] arr = new Ex09_Constructor[5];

		for (int i = 0; i < arr.length; i++) {

			System.out.print("이름 : ");
			String name = scan.next();
			System.out.print("국어 : ");
			int kor = scan.nextInt();
			System.out.print("영어 : ");
			int eng = scan.nextInt();
			System.out.print("수학 : ");
			int math = scan.nextInt();
			
			Ex09_Constructor person = new Ex09_Constructor(name, kor, eng, math);
			
			arr[i]= person;
		
		}
		Ex09_Constructor tmp = new Ex09_Constructor();
		for (int i = 0; i < arr.length - 1; i++) {
			for (int j = i + 1; j < arr.length; j++) {
				if (arr[i].getRank() > arr[j].getRank()) {
					tmp = arr[i];
					arr[i] = arr[j];
					arr[j] = tmp;
				}
			}
		}
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i].getName() + "\t");
			System.out.print(arr[i].getSum() + "\t");
			System.out.print(arr[i].getAvg()+ "\t");
			System.out.print(arr[i].getHak() + "\t");
			System.out.println(arr[i].getRank());
		}
		
	}
}
