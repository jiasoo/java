package day16.com.ict.edu;

enum Type{
	WALKING, RUNNING, TRACKING, HIKING
}

public class Ex02_enum{
	String name;
	int size;
	Type type;
	
	public static void main(String[] args) {
		Ex02_enum shoes = new Ex02_enum();
		shoes.name = "나이키";
		shoes.size = 270;
		shoes.type = Type.RUNNING;
		
		System.out.println("신발 이름 : " + shoes.name);
		System.out.println("신발 사이즈 : " + shoes.size);
		System.out.println("신발 종류 : " + shoes.type);
		System.out.println("신발 종류 : " + Type.WALKING);
		
	}
}
