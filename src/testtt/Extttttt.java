package testtt;

import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class Extttttt extends JFrame{
	JPanel jp1,jp2,jp3,jp4,jp5,jp6;
	JButton jb1,jb2,jb3,jb4;
	JTextField jtf1,jtf2,jtf3,jtf4;
	JTextArea jta;
	JScrollPane jsp;
	public Extttttt() {
		super("DB 연동 정보");
		jp1 = new JPanel(new GridLayout(0, 2));
		jp2 = new JPanel(new GridLayout(0, 2));
		jp3 = new JPanel(new GridLayout(0, 2));
		jp4 = new JPanel(new GridLayout(0, 2));
		jp5 = new JPanel(new GridLayout(4, 2));
		jp6 = new JPanel();
		
	
		jtf1 = new JTextField();
		jtf2 = new JTextField();
		jtf3 = new JTextField();
		jtf4 = new JTextField();
		
		jb1= new JButton("전체보기");
		jb2= new JButton("삽입");
		jb3= new JButton("삭제");
		jb4= new JButton("검색");
		
		
		
		
		setSize(600, 400);
		setLocationRelativeTo(null);
		setResizable(false);
		setVisible(true);
		setDefaultCloseOperation(EXIT_ON_CLOSE);

	}
	public static void main(String[] args) {
		new Extttttt();

	}
}