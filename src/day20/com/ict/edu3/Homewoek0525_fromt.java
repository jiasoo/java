package day20.com.ict.edu3;

import java.awt.CardLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;

public class Homewoek0525_fromt extends JPanel{
	JPanel pg;
	JButton jb1, jb2, jb3, jb4;
	CardLayout cardLayout;

	public Homewoek0525_fromt(CardLayout cardLayout, JPanel pg) {
		this.cardLayout = cardLayout;
		this.pg = pg;
		
		jb1 = new JButton("계산기");
		jb2 = new JButton("성적 계산");
		jb3 = new JButton("수도 알아보기");
		jb4 = new JButton("종료");
		
		add(jb1);
		add(jb2);
		add(jb3);
		add(jb4);
		
		jb1.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				cardLayout.show(pg, "calc");
			}
		});
		jb2.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				cardLayout.show(pg, "grade");
			}
		});
		jb3.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				cardLayout.show(pg, "country");
			}
		});
		jb4.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
	}
}

