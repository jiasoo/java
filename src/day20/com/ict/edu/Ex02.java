package day20.com.ict.edu;

import java.util.Iterator;

public class Ex02 implements Runnable{
	int x = 0;
	@Override
	public synchronized void run() {
		for (int i = 0; i < 50; i++) {
			System.out.println(++x + " : "+Thread.currentThread().getName());
		}
	}

}
