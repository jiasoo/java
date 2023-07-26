package day23.com.ict.edu;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Toolkit;

import javax.swing.JFrame;

public class Ex01_Canvas extends JFrame {
	Image image;
	int x = 200;

	@Override
	public void paint(Graphics g) {
		image = Toolkit.getDefaultToolkit().getImage("src/image/java1.png");
		g.drawImage(image, x, getHeight() - 100, 100, 100, this);
	}
}
