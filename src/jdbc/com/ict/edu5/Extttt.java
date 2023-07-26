package jdbc.com.ict.edu5;

import java.awt.BorderLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

public class Extttt extends JFrame{
	JPanel jp1 ,jp2 ;
	JButton jb1, jb2, jb3, jb4, jb5, jb6,jb7,jb8;
	JTextArea jta;
	JScrollPane jsp;
	public Extttt() {
		super("관광지 관리");
		jp1 = new JPanel();
		jp2 = new JPanel();
		
		jb1 = new JButton("관광지");
		jb2 = new JButton("사용자");
		jb3 = new JButton("플래너");
		jb4 = new JButton("게시판");
		jb5 = new JButton("선택");
		jb6 = new JButton("수정");
		jb7 = new JButton("삭제");
		jb8 = new JButton("등록");
			
		jp1.add(jb1);
		jp1.add(jb2);
		jp1.add(jb3);
		jp1.add(jb4);
		
		jp2.add(jb5);
		jp2.add(jb6);
		jp2.add(jb7);
		jp2.add(jb8);
		
	
		jta = new JTextArea();
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		jta.setLineWrap(true);
		jta.setEditable(false);
		
		add(jp1, BorderLayout.NORTH);
		add(jsp, BorderLayout.CENTER);
		add(jp2, BorderLayout.SOUTH);
		
		setSize(600, 400);
		setLocationRelativeTo(null);
		setResizable(false);
		setVisible(true);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
	}	
	public static void main(String[] args) {
		new Extttt();
	}
}
