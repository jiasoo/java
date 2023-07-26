package day12.com.ict.edu;

import java.util.Arrays;
import java.util.Iterator;


public class test {
	public static void main(String[] args) {
		int[][]arr=new int [5][5];
		// 번호,총점,평균,학점,순위
		int[] p1 = {1, 270, 90, 'A', 1};
		int[] p2 = {2, 210, 70, 'C', 1};
		int[] p3 = {3, 180, 60, 'F', 1};
		int[] p4 = {4, 300, 100, 'A', 1};
		int[] p5 = {5, 285, 95, 'A', 1};
		
		arr[0] =p1;
		arr[1] =p2;
		arr[2] =p3;
		arr[3] =p4;
		arr[4] =p5;
		
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				if(i==j) continue;
				if(arr[i][1]<arr[j][1]) {
					arr[i][4]++;
				}
			}
		}
		int[] tmp = new int[5];
		
		
	}	
}
