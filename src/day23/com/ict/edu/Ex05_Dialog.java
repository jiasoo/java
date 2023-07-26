package day23.com.ict.edu;

import java.awt.FileDialog;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class Ex05_Dialog extends JFrame{
	JPanel jp;
	JButton jb1,jb2,jb3,jb4,jb5,jb6;
	
	public Ex05_Dialog() {
		super("다이얼로그");
		
		jp = new JPanel();
		jb1 = new JButton("메세지");
		jb2 = new JButton("확인");
		jb3 = new JButton("입력");
		jb4 = new JButton("옵션");
		jb5 = new JButton("파일열기");
		jb6 = new JButton("파일저장");
	
		jp.add(jb1);
		jp.add(jb2);
		jp.add(jb3);
		jp.add(jb4);
		jp.add(jb5);
		jp.add(jb6);
		
		add(jp);
		setSize(500, 100);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
		//메시지 다이얼 로그
		jb1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//메시지 다이얼 로그 : 사용자에게 정보를 알린ㄴ 역할만 한다.(js(자바스크립트에서는alert))
				 //JOptionPane.showConfirmDialog(parentComponent, message);
				//JOptionPane.showConfirmDialog(jp, "방가방가");          // INFORMATEION_MASSAGE(기본)
				//JOptionPane.showConfirmDialog(getParent(), "방가 방가");//WARNING_MASSAGE
				
				// JOptionPane.showConfirmDialog(parentComponent, message, title, massageType);
				// massageType : ERROR_MESSAGGE, INFORMATEION_MESSAGE(기본),WARNING_MASSAGE,
				//               QUESTION_MESSAGE, PLAIN_MESSAGE(없음)
				   JOptionPane.showConfirmDialog(jp, "방가방가","MESSAGE 창", JOptionPane.WARNING_MESSAGE);
			}
		});
		jb2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
			//확인 다이얼 로드 : 정보를 알라고 사용자의 반응의 결과를 가져온다.(확인(0),아니요(1),취소(2))
				// JOptionPane.showConfirmDialog(parentComponent, message);
				// int res = JOptionPane.showConfirmDialog(jp, "정말 삭제할까요");
				// System.out.println(res);
				
				// JOptionPane.showConfirmDialog(parentComponent, message,title, optionType);
				// optionType : YES_NO_CANEL_OPTION(예, 아니요, 취소), YES_NO_OPTION(예, 아니요, 취소),
				//              OK_CANCEL_OPTION(확인,취소)
				//JOptionPane.showConfirmDialog(jp, "정말삭제할까요?","확인창",JOptionPane.YES_NO_OPTION);
				JOptionPane.showConfirmDialog(jp, "정말삭제할까요?","확인창",JOptionPane.OK_CANCEL_OPTION);
			}
		});
		jb3.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
			// 입력 다이얼 로그 : 사용자에게 정보를 받아 다이얼 로그 (js(자바스크리브에서 confirm())
		    // String msg = JOptionPane.showinputDialog(parentComponent, message);
			// String msg = JOptionPane.showInputDialog(jp, "나이 : ");
			// System.out.println(msg);
				
		    // String msg =  JOptionPane.showInputDialog(parentComponent, message 초기값);
			   String mag = JOptionPane.showInputDialog(jp,"나이 : " , 17);
			}
		});
		jb4.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
			// 옵션 다이얼 로그 : 사용자 다이얼 로그 (사용자가 만드는 다이얼 로그)
			//	JOptionPane.showOptionDialog(parentComponent, message, title, optionType, 
			//	                             messageType, null, null, null)
			int res =JOptionPane.showOptionDialog(jp, "방가방가", "사용자 다이얼 로그",
					 JOptionPane.YES_NO_OPTION, JOptionPane.PLAIN_MESSAGE, null, null, null );
			System.out.println(res); 		
			}
		});
		jb5.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
				//파일 열기 다이얼 로그
				FileDialog fd = new FileDialog((JFrame)getParent(),"^^파일 열기^^",FileDialog.LOAD);
				fd.setVisible(true);
				String msg = fd.getDirectory()+fd.getFile();
				System.out.println(msg);
			}
		});
		jb6.addActionListener(new ActionListener() {			
			@Override
			public void actionPerformed(ActionEvent e) {
				//파일 저장 다이얼 로그
				FileDialog fd = new FileDialog((JFrame)getParent(),"^^파일 저장^^",FileDialog.SAVE);
				fd.setVisible(true);
				String msg = fd.getDirectory()+fd.getFile();
				System.out.println(msg);
			}
		});
	}
	public static void main(String[] args) {
		new Ex05_Dialog();
	}
}
