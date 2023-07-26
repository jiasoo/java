package day16.com.ict.edu;

enum Type2{
	WALK("워킹화","남성",270),
	RUN("런닝화","남성",260),
	TRACK("트래킹화","여성",240),
	HIK("하이팅화","여성",230);
	
	final private String name ;
	final private String gender ;
	final private int size ;
	
	// get만 생성
	public String getName() { return name;}
	public String getGender() { return gender;}
	public int getSize() {    return size; }
	
	// 생성자 역할을 하는 넘
	private Type2(String name,String gender, int size) {
		this.name = name;
		this.gender = gender;
		this.size = size;
	}
	
}
public class Ex03_enum {
	public static void main(String[] args) {
		Type2[] items = Type2.values();
		
		for (int i = 0; i < items.length; i++) {
			System.out.println(items[i].getName()+":"+items[i].getSize()+","+items[i].getGender());
		}
	}

}
