package day18.com.ict.edu;

import java.util.Iterator;
import java.util.Stack;

public class Ex06_List {
	// List 인터페이스 : 배열과 흡사한 구조
	//                삽입,삭제,추가가 자유롭다.
	//                크기를 미리 지정하지 않아도 된다.
	// List 인터페이스를 구현한 클래스 : Stack, ArrayList, Vector;
	// Stack : LIFO(Last In First Out)
	//         마지막에 들어온 데이터가 먼저 나가는 형태
	
	// add. push, adddElement =>추가
	// add(index, E) =>삽입
	// pop : 맨 위에 존재하는 객체를 반호나하고 삭제 한다.
	// peek : 맨 위에 존재하는 객체를 반환. 삭제 안함
	// search : 
	public static void main(String[] args) {
		Stack<String> stack = new Stack<>();
		stack.add("둘리");
		stack.push("공실이");
		stack.addElement("마이콜");
		
		stack.add(0, "고길동");
		stack.add(2, "희동이");
		
		// 마지막 객체 보기 : pop(삭제), peek(삭제 안함)
		System.out.println(stack.peek());
		System.out.println(stack);
		
		//둘리를 가지고 있냐
		if(stack.contains("둘리")) {
			//둘리 위치 찾기
			System.out.println(stack.indexOf("둘리")); // 왼쪽, 0부터
			System.out.println(stack.search("둘리"));  // 오른쪽, 1부터
			
			// 위치값을 이용해서 객체 얻기
			System.out.println(stack.get(1));
			System.out.println(stack.elementAt(1));
			System.out.println(stack.get(stack.indexOf("둘리")));
		}else {
			System.out.println("존재하지 않음");
		}
		if(stack.contains("고길동"));{
			
			//치환
			stack.setElementAt("도우너", stack.indexOf("고길동"));
		}
		System.out.println(stack);
		
		// 중복 가능
		stack.add("둘리");
		stack.add("고길동");
		System.out.println(stack);
		
		// 하나씩 꺼내기 (배열,왼쪽,0부터)
		for (String k : stack) {
			System.out.println(k+"님");
		}
		System.out.println();
		
		Iterator<String> it = stack.iterator();
		while (it.hasNext()) {
			String k = (String) it.next();
			System.out.println(k+"짱");
			
		}
		System.out.println();
		while (! stack.isEmpty()) {		
		//스택방식으로(오른쪽)
			String k = stack.pop();
			System.out.println(k+", 크기는 "+stack.size()+"이다.");			
		}
		System.out.println(stack);
	 }	
  }
