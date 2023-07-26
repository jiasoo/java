package testtt;

import java.awt.BorderLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

public class ttt1 extends JFrame{
	JPanel jp1,jp2;
	JButton jb1,jb2;
	JTextArea jta;
	JScrollPane jsp;
	
	public ttt1() {
		super("관리자");
		
		jp1 = new JPanel();
		jp2 = new JPanel();
		
		jb1 = new JButton("관광지 관리");
		jb2 = new JButton("사용자 관리");
		
		jp1.add(jb1);
		jp1.add(jb2);
		
		jta = new JTextArea();
		
		
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		jta.setLineWrap(true);
		jta.setEditable(false);
		
		add(jp1, BorderLayout.NORTH);
	
		add(jsp, BorderLayout.CENTER);
		
		
		setSize(600, 400);
		setLocationRelativeTo(null);
		setResizable(false);
		setVisible(true);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
	public static void main(String[] args) {
		new ttt1();
	}
}
