package day19.com.ict.edu;

public class Ex03_Cat implements Runnable{

	@Override
	public void run() {
		while (true) {
			System.out.println("야옹~~야옹~~" + Thread.currentThread().getName());
			Ex03_Cat cat = new Ex03_Cat();
			Ex03_Dog dog = new Ex03_Dog();
			
			// Runnable은 start 메서드를 가지고 있지 않으므로 오류발생
			//cat.start();
			
			System.out.println("야옹~~야옹~~" + Thread.currentThread().getName());
		}
		
	}

}
