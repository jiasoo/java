package testtt;

import java.awt.CardLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;

public class Ex_tttt extends JPanel{
	JPanel pg1,jp;
	JButton jb1,jb2,jb3,jb4;
	CardLayout cardLayout;
	public Ex_tttt(CardLayout cardLayout, JPanel pg1) {
		this.cardLayout = cardLayout;
		this.pg1 =pg1;
		jb1 = new JButton("성 적");
		jb2 = new JButton("계산기");
		jb3 = new JButton("나라와수도");
		jb4 = new JButton("종 료");
		
		add(jb1);
		add(jb2);
		add(jb3);
		add(jb4);
		
		jb1.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
					cardLayout.show(pg1, "grade");
				
			}
		});
		jb2.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
				cardLayout.show(pg1, "calc");
				
			}
		});
		jb3.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
				cardLayout.show(pg1, "country");
				
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
