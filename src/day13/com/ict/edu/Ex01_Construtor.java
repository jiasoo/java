package day13.com.ict.edu;

public class Ex01_Construtor {
	// this와 this()
	// this : 객체 내부에서 객체 자신을 지칭하는 예약어
	//        지역변수와 전역변수 이름이 같을 때 전역변수 앞에 this 를 붙인다.
	
	// this() : 객체 내부에서 객체 자신의 생성자를 지칭하는 예약어
	//private -접근만 못함 보는건 가능
	private String name = "홍길동";
	private int age = 34;
	
	

	public Ex01_Construtor() {
		// 생성자가 다른 생성자 호출 (반드시 첫번째 줄에서)
		this("꺽정임");
		System.out.println("기본생성자 : " + this);
		// 생선자에서 메서드를 호출
		//prn() ;
		//this.prn();
		
		
	}
	public Ex01_Construtor(String name){
		this.name = name ;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
		
	
	}
	public void prn() {
		
	}
}
	

