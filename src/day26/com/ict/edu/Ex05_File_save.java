package day26.com.ict.edu;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Label;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

public class Ex05_File_save extends JFrame{
	 JPanel jp;
	 JTextField jtf;
	 JButton jb;
	 JTextArea jta;
	 JScrollPane jsp;
	 
	public Ex05_File_save() {
		super("저장하기");
		jp = new JPanel();
		jtf = new JTextField(10);
		jb = new JButton("SAVE");
		jta = new JTextArea(5,20);
		
		jta.setLineWrap(true);
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		
		jp.add(new JLabel("파일경로"));
		jp.add(jtf);
		jp.add(jb);
		
		add(jp, BorderLayout.NORTH);
		add(jta, BorderLayout.CENTER);
		
		Dimension ds = Toolkit.getDefaultToolkit().getScreenSize();
		setBounds(ds.width / 2 - 250, ds.height / 2 - 250, 500, 500);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
		jb.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
				String pathName = jtf.getText();
				File file = new File(pathName);
				FileOutputStream fos = null;
				try {
					file.createNewFile();
					fos = new FileOutputStream(file,true);
					String str = jta.getText();
					byte[] arr = str.getBytes();
					fos.write(arr);
					fos.flush();
				} catch (IOException e1) {
					e1.printStackTrace();
				}finally {
					try {
						fos.close();
					} catch (Exception e2) {
					}
				}
			}
		});
		
	}
	
				
	public static void main(String[] args) {
		new Ex05_File_save();
	}
}


			
