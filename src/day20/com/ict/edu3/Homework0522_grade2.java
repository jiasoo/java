package day20.com.ict.edu3;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

public class Homework0522_grade2 extends JPanel implements ActionListener {
	JPanel jp1, jp2, jp3, jp4;
	JTextField name, kor, eng, math;
	JTextArea jta;
	JScrollPane jsp;
	JButton jb1, jb2, jb3;
	int x = 0; // 총점
	double y = 0; // 평점
	String hak = ""; // 학점
	String nam = ""; // 이름
	Homework0524_Main main;

	public Homework0522_grade2(Homework0524_Main main) {
		this.main = main;

		jp1 = new JPanel();
		name = new JTextField(10);
		jp1.add(new JLabel(" 이  름 : "));
		jp1.add(name);

		jp2 = new JPanel();
		kor = new JTextField(10);
		eng = new JTextField(10);
		math = new JTextField(10);
		jp2.add(new JLabel(" 국  어 : "));
		jp2.add(kor);
		jp2.add(new JLabel(" 수  학 : "));
		jp2.add(eng);
		jp2.add(new JLabel(" 영  어 : "));
		jp2.add(math);

		jta = new JTextArea(20, 0);
		jta.setLineWrap(true);
		jta.setEditable(false);
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);

		jp3 = new JPanel();
		jb1 = new JButton("계 산");
		jb2 = new JButton("뒤로가기");
		jb3 = new JButton("초기화");
		jp3.add(jb1);
		jp3.add(jb2);
		jp3.add(jb3);

		jp4 = new JPanel();
		jp4.setLayout(new BorderLayout());
		jp4.add(jp2, BorderLayout.NORTH);
		jp4.add(jsp, BorderLayout.CENTER);
		jp4.add(jp3, BorderLayout.SOUTH);

		add(jp1, BorderLayout.NORTH);
		add(jp4, BorderLayout.CENTER);

		jb1.addActionListener(this);
		jb2.addActionListener(this);
		jb3.addActionListener(this);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		JButton obj = (JButton) e.getSource();
		if (obj == jb1) {
			nam = name.getText();
			x = Integer.parseInt(kor.getText()) + Integer.parseInt(eng.getText()) + Integer.parseInt(math.getText());
			y = ((x / 3.0) * 10) / 10.0;
			if (y >= 90) {
				hak = "A학점";
			} else if (y >= 80) {
				hak = "B학점";
			} else if (y >= 70) {
				hak = "C학점";
			} else {
				hak = "F학점";
			}
			jta.append("이름 :" + nam + "\n"); // append = 추가
			jta.append("총점 :" + x + "점" + "\n");
			jta.append("평균 :" + y + "\n");
			jta.append("학점 :" + hak + "\n");
		} else if (obj == jb2) {
			main.cardLayout.show(main.pg, "fromt");
		} else if (obj == jb3) {
			name.setText("");
			kor.setText("");
			eng.setText("");
			math.setText("");
			jta.setText("");
		}

	}
}
