package day18.com.ict.edu;

import java.util.LinkedList;

public class Ex08_LinkedList {
	// Queue(큐) 인터페이스 : FIFO(First In First Out)
	//					   먼저 들어온 정보가 먼저 나감
	// Queue 구현한 클래스 : LinekList
	public static void main(String[] args) {
		LinkedList<String> linkedList = new LinkedList<>();
		
		//추가 , 삽입 : add, addFirst, add	Last, offer, offerFirst, offerLast
		linkedList.add("고길동");
		linkedList.offer("도우너");
		linkedList.addFirst("둘리");
		linkedList.offerFirst("또치");
		linkedList.addLast("또치");
		linkedList.offerFirst("또치");
		linkedList.add(3, "차두리");
		
		System.out.println(linkedList);
		
		
			
		}

	}

