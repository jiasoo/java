package day14.com.ict.edu;

import java.util.StringTokenizer;

public class Ex02_StringBuffer {
	public static void main(String[] args) {
		// 문자열을 추가할때 사용 (메모리 주소가 변경되지 않는다.)
		// 추가할 때 append() 사용
		// toString() => String 전환하다.
		StringBuffer sb = new StringBuffer("ictedu");
		// 추가
		sb.append("대한민국");
		
		System.out.println(sb);
		System.out.println(sb.toString());
		
		
		// StringTokenizer : 구분자를 이용해서 문자열 분리,split 과 차이점은 배열의 크기를 지정 못함
		//		             구분자가 없으면 (띄어쓰기, "," 로 구분)
		// nextToken()를 이용해서 문자열들 분리
		
		// split(String regex) : String[]
		// split(String regex, limit) : String[]
		// regex => 구분자 (나눌 기준), limit =>배열의 크기 (방의 갯수)
		
		String str = "사과,바나나,망고,오렌지,수박";
		// 구분자 있음,
		// split과 다른 점은 크기 지정 못함
		StringTokenizer st2 = new StringTokenizer(str, ",");
		while (st2.hasMoreElements()) {//다음요소가 있니? 물어보는것 맞으면true아니면false
			String res = st2.nextToken();// 다음요소 추출
			System.out.println(res);			
		}
		System.out.println();
		
		// 추천
		String[] arr =  str.split(",");
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
	}
}
