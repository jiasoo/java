package day20.com.ict.edu3;



import java.awt.CardLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;


public class Homework0524_Main extends JFrame{
	JPanel pg;
	CardLayout cardLayout;
	
	public Homework0524_Main() {
		
		pg = new JPanel();
		cardLayout = new CardLayout();
		pg.setLayout(cardLayout);
		
		
		Homewoek0525_fromt fromt = new Homewoek0525_fromt(cardLayout, pg);
		Homework0522_Calc2 calc2 = new Homework0522_Calc2(this);
		Homework0522_grade2 grade2 = new Homework0522_grade2(this);
		Ex02_country country = new Ex02_country(this);
		
		pg.add("fromt",fromt);
		pg.add("calc2",calc2);
		pg.add("grade2",grade2);
		pg.add("country",country);
		
		add(pg);
		
		setLocationRelativeTo(null);
		setSize(600,500);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
	}
	public static void main(String[] args) {
		new Homework0524_Main();
	}
}

