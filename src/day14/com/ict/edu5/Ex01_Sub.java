package day14.com.ict.edu5;

public class Ex01_Sub extends Ex01_Super{
	int weight = 35;
	
	@Override//어노테이션
	public void sound() {
		System.out.println("음악소리");
	}// 울음소리가 출력안되고 음악소리가 출력 정보은닉
	
	public void hobby() {
		System.out.println("잠자기");
	}
}
