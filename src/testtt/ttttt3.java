package testtt;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class ttttt3 extends JFrame {
	public ttttt3() {
	JPanel jj = new JPanel();
	JTextArea jta = new JTextArea(7, 13);
	
	setLayout(null);
	setTitle("테스트");
	setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	jj.setSize(300, 300);
	jj.add(new JScrollPane(jta));
	add(jj, BorderLayout.CENTER);
	setSize(300, 300);
	setVisible(true);
	}
	public static void main(String[] args) {
		new ttttt3();
	}
}
