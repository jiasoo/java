package day18.com.ict.edu;

import java.security.KeyStore.Entry;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;



public class Ex09_Map {
	// Map 인터페이스 : key value 가 1:1 매핑 그로를 가지고있다
	//               key는 중복 뵐수가없다(기존value가 삭제된다.(엎어쓰기}
	//               value 중복가능
	//	             key를 호출 Value가 나온다
	//               key를 별도로 관리 Set으로 관리=>keySey()
	//               add() 추가를 못함
	//               put(key, value)로 추가할 수 있다
		  
	public static void main(String[] args) {
		// 생성 ( key사 숫자,value는 문자열인 경우)
		HashMap<Integer,String> map1 = new HashMap();
		map1.put(0, "한국");
		map1.put(1, "미국");
		map1.put(2, "영국");
		map1.put(8, "태국");
		map1.put(10,"중국");
		map1.put(5, "남아프리카공화국");
		
		map1.put(10, "대만");
		System.out.println(map1);
		// 하나씩 출력 get(key)
		System.out.println(map1.get(2));
		System.out.println(map1.get(3));//null
		
		//삭제 : remove(key) : key, value 삭제,
		map1.remove(5);
		System.out.println(map1);
		
		//key를 set에서 관리하게 한다. => keySet();
		for (Integer k : map1.keySet()) {
			System.out.println(map1.get(k));
		}
		System.out.println();
		
		Iterator<Integer> it = map1.keySet().iterator();
		while (it.hasNext()) {
			Integer k = (Integer) it.next();
			System.out.println(map1.get(k));
			
		}
		System.out.println();
		
		// entrySet() 메서드는 key, value의 갑이 모두 필요한 경우 사용
		Set set1 = map1.entrySet();
		Iterator it2 = set1.iterator();
		while (it2.hasNext()) {
			Entry entry = (Entry) it2.next();
//			Integer key = (Integer)entry.getKey();
//          String value = (String)entry.getValue();
//          System.out.println(key + ":" + value);

			
		}
	}

	

}
