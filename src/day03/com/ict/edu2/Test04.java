package day03.com.ict.edu2;

public class Test04 {
	public static void main(String[] args) {
		// 카페모카 6500이다.
		// 친구와 둘이서 15000원을 내고 주문했다.
		// 잔돈은 얼마 인가? (단, 부가세 10%포함)
		
		int a = 6500 ;
		int b = 15000 ;
		int c = 1300 ;
		
		int su1 = (a * 2) ;
		int su2 = (b - su1) ;
		
		int su3 = (su2-c) ;
		
		
		System.out.println(su3);
		
		
		// 입력
		// String coff = "카페모카";
		// int dan = 6500 ;
		// int su = 2 ;
		// int in = 15000 ;
		
		// 부가세를 구하기 위해서 총금액을 구하자 
		// int total = dan * su ;
		
		// 둘 중 하나만 사용하자 
		// int vat = total / 10 ;
		// int vat2 = (int)(total * 0.1) ;
		// int out = in - (total + vat) ;
		
		// system.out.println("잔돈 : " + out);
		
		// 위 정보를 한번 처리 
		// int out2 = in - (int)(total * 1.1);
		// System.out.println("잔돈 : " + out);
		
		System.out.println("========================");
		
		//카페모카 8500 지불20000 잔돈 부가세10%
		
		String coff = "카페모카";
		int dan = 8500 ;
		int su = 2 ;
		int in = 20000; 
		int total = su * dan ;
		int vat = (int)(total*0.1);
		int out = in -(total+vat);
		
		System.out.println("잔돈 : "+ out);
		
		
		
		
		
	}
}
