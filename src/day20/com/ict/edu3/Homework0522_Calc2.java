package day20.com.ict.edu3;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

public class Homework0522_Calc2 extends JPanel implements ActionListener, ItemListener {
	private static final String EXIT_ON_CLOSE = null;
	JPanel jp1, jp2;
	JLabel jl1, jl2;
	JTextField jtf1, jtf2;
	JRadioButton jrb1, jrb2, jrb3, jrb4;
	ButtonGroup bg;
	JTextArea jta;
	JScrollPane jsp;
	JButton jb1, jb2, jb3;
	String cal = ""; // 라디오 버튼 값
	int result = 0;
	Homework0524_Main main;

	public Homework0522_Calc2(Homework0524_Main main) {
		this.main = main;
	
		jp1 = new JPanel();
		jl1 = new JLabel("수1 : ");
		jtf1 = new JTextField(5);
		jl2 = new JLabel("수2 : ");
		jtf2 = new JTextField(5);

		jrb1 = new JRadioButton("+");
		jrb2 = new JRadioButton("-");
		jrb3 = new JRadioButton("*");
		jrb4 = new JRadioButton("/");
		// 반드시 JRadioButton 는 ButtonGroup 만들어서 넣자
		bg = new ButtonGroup();
		bg.add(jrb1);
		bg.add(jrb2);
		bg.add(jrb3);
		bg.add(jrb4);

		jp1.add(jl1);
		jp1.add(jtf1);
		jp1.add(jl2);
		jp1.add(jtf2);

		jp1.add(jrb1);
		jp1.add(jrb2);
		jp1.add(jrb3);
		jp1.add(jrb4);

		jta = new JTextArea(20,50);
		jta.setLineWrap(true); // 자동 줄 바꾸기
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		// 편집 불가능하게 만들자
		jta.setEditable(false);

		jp2 = new JPanel();
		jb1 = new JButton("계  산");
		jb2 = new JButton("뒤로가기");
		jb3 = new JButton("초 기 화");
		jp2.add(jb1);
		jp2.add(jb2);
		jp2.add(jb3);

		add(jp1, BorderLayout.NORTH);
		add(jsp, BorderLayout.CENTER);
		add(jp2, BorderLayout.SOUTH);

		
		jb1.addActionListener(this);
		jb2.addActionListener(this);
		jb3.addActionListener(this);

		jrb1.addItemListener(this);
		jrb2.addItemListener(this);
		jrb3.addItemListener(this);
		jrb4.addItemListener(this);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		JButton obj = (JButton) e.getSource();

		if (obj == jb1) {
			if (cal.equals("+")) {
				result = Integer.parseInt(jtf1.getText()) + Integer.parseInt(jtf2.getText());
			} else if (cal.equals("-")) {
				result = Integer.parseInt(jtf1.getText()) - Integer.parseInt(jtf2.getText());
			} else if (cal.equals("*")) {
				result = Integer.parseInt(jtf1.getText()) * Integer.parseInt(jtf2.getText());
			} else if (cal.equals("/")) {
				result = Integer.parseInt(jtf1.getText()) / Integer.parseInt(jtf2.getText());
			}
			jta.setText(jtf1.getText() + cal + jtf2.getText() + "=" + result);
		} else if (obj == jb2) {
			main.cardLayout.show(main.pg,"fromt" );
		} else if (obj == jb3) {
			bg.clearSelection();
			jta.setText("");
			jtf1.setText("");
			jtf2.setText("");
		}
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		JRadioButton obj = (JRadioButton) e.getSource();

		if (e.getStateChange() == e.SELECTED) {
			cal = obj.getText();
		}

	}

}

