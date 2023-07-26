package day14.com.ict.edu5;

public class Ex02_main {
	public static void main(String[] args) {
		
		Ex02_Dog dog = new Ex02_Dog();
		Ex02_cat cat = new Ex02_cat();
		
		dog.sound();
		dog.hobby();
		System.out.println(dog.eyes);
		System.out.println(dog.color);
		System.out.println();
		
		cat.sound();
		cat.hobby();
		System.out.println(cat.eyes);
		System.out.println(cat.color);
		System.out.println();
		
		
		// 객체생성
		// 부모클래스 변수 = new 자식클래스 생성자();
		
		Ex02_Animal animal = null;
		int su = 1;
		if(su==1) {          // 고양이
			animal = new Ex02_cat();
		}else if(su==2) {    // 강아지
			animal = new Ex02_Dog();		
			
		}
		// 오버라이딩
		animal.sound();
		
		System.out.println(animal.color);
		System.out.println(animal.eyes);
		
		// 자식클래스가 가지고 있는 것을 사용 못 함.
		// 오버라이딩된것은 자식클래스가 먼저
		// animal.play();
	}

}
