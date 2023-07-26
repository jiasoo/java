package project1;

import java.awt.BorderLayout;
import java.awt.GridLayout;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

public class rrrrr extends JFrame{
	JPanel jp_name,jp_password,jp_newpassword,jp_email,jp_phone ,jp_center,jp_center2,jp_south2;
	JTextArea jta;
	JScrollPane jsp;
	JTextField jtf1, jtf2, jtf3, jtf4,jtf5;
	JButton jb5,jb6;                                                     
	public rrrrr() {
		super("회원정보 수정");
		
		jp_name = new JPanel(new GridLayout(0,2));
		jp_password = new JPanel(new GridLayout(0,2));
		jp_newpassword = new JPanel(new GridLayout(0,2));
		jp_email = new JPanel(new GridLayout(0,2));
		jp_phone = new JPanel(new GridLayout(0,2));
		jp_center = new JPanel();
		jp_center2 = new JPanel();
		jp_south2 = new JPanel();
		
		jb5= new JButton("확 인");
		jb6= new JButton("취 소");
		
		jtf1 = new JTextField(15);
		jtf2 = new JTextField(15);
		jtf3 = new JTextField(15);
		jtf4 = new JTextField(15);
		jtf5 = new JTextField(15);
		
		//이름 , 새비번 , 새비번확인 ,이메일, 전화번호 
		jp_name.add(new JLabel("이름 : " , JLabel.CENTER));
		jp_name.add(jtf5);
		jtf5.setText("김지수");
		jtf5.setEditable(false);
		jp_password.add(new JLabel("새 비밀번호 : " , JLabel.CENTER));
		jp_password.add(jtf1);
		jp_newpassword.add(new JLabel("새 비밀번호 확인 : ", JLabel.CENTER));
		jp_newpassword.add(jtf2);
		jp_email.add(new JLabel("e-mail : " , JLabel.CENTER));
		jp_email.add(jtf3);
		jp_phone.add(new JLabel("전화번호 : " ,JLabel.CENTER));
		jp_phone.add(jtf4);
		
		jp_center.add(jp_name);		
		jp_center.add(jp_password);
		jp_center.add(jp_newpassword);
		jp_center.add(jp_email);
		jp_center.add(jp_phone);
		
		jp_south2.add(jb5);
		jp_south2.add(jb6);
		
		jp_center.setLayout(new BoxLayout(jp_center, BoxLayout.Y_AXIS));
		jp_center2.add(jp_center);
		
		jta = new JTextArea();	
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		jta.setLineWrap(true);
		jta.setEditable(false);
		
		add(jp_center2, BorderLayout.CENTER);
		add(jp_south2,BorderLayout.SOUTH);
		
		setSize(600, 400);
		setLocationRelativeTo(null);
		setResizable(false);
		setVisible(true);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
	public static void main(String[] args) {
		new rrrrr();
		
	}
}