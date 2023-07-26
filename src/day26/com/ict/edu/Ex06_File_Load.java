package day26.com.ict.edu;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

public class Ex06_File_Load extends JFrame {
	JPanel jp;
	JTextField jtf;
	JButton jb;
	JTextArea jta;
	JScrollPane jsp;
	
	public Ex06_File_Load() {
		super("저장하기");
		
		jp = new JPanel();
		jtf = new JTextField(10);
		jb = new JButton("Load");
		jta = new JTextArea(5,20);
		
		jta.setLineWrap(true);
		jsp = new JScrollPane(jta, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS,
				ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		
		jp.add(new JLabel("파일 경로"));
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
				FileInputStream fis = null;
				try {
					fis = new FileInputStream(file);
					byte[] b = new byte [(int) file.length()];
					fis.read(b);
					String msg = new String(b);
					jta.append(msg);
				} catch (FileNotFoundException e1) {

					e1.printStackTrace();
				} catch(IOException e1) {
					e1.printStackTrace();
				} finally {
					try {
						fis.close();
					} catch (Exception e2) {

					}
				}
			}
		});
		
	}
	public static void main(String[] args) {
		new Ex06_File_Load();
		
	}
}
