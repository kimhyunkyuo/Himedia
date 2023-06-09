package awt.Login;

import java.awt.Button;
import java.awt.Frame;
import java.awt.Label;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class Main implements ActionListener{
	private Frame f;
	private TextField tfId, tfPwd, tfMsg;
	private Button bLogin;
	private MemberDAO dao;
	
	public Main() {
		dao = new MemberDAO();
		
		
		f = new Frame("Login Frame");
		f.setSize(500, 300);
		f.setLayout(null);

		Label lid = new Label("ID : ");
		lid.setBounds(50, 50, 100, 40);
		
		tfId = new TextField();
		tfId.setBounds(160,60,190,40);
		
		Label lPwd = new Label("Password : ");
		lPwd.setBounds(50, 130, 100, 40);
		
		tfPwd = new TextField();
		tfPwd.setBounds(160,130,190,40);
		
		bLogin = new Button("Login");
		bLogin.setBounds(380,90,50,50);
		bLogin.addActionListener(this);
		tfMsg = new TextField();
		tfMsg.setBounds(50, 180, 370, 40);
		
		f.add(tfId);
		f.add(lPwd);
		f.add(tfPwd);
		f.add(lid);
		f.add(bLogin);
		f.add(tfMsg);
		
	
		
		f.setVisible(true);

	}

	public static void main(String[] args) {
	  new Main();

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		System.out.println("click");
		System.out.println(tfId.getText() + " " + tfPwd.getText());
		
		
		String strId = tfId.getText();
		
        ArrayList<MemberVo> list = dao.list(strId);
        
        for (int i = 0; i < list.size(); i++) {
            MemberVo data = (MemberVo) list.get(i);
            String id = data.getId();
            String pwd = data.getpassword();
            
           System.out.println("DB ==> "+  id + " "+ pwd);
		
           if(tfPwd.getText().equals(pwd)){
        	   System.out.println("로그인이 되었습니다.");
           }else {
        	   System.out.println("다시 입력하세요");
           }
		
	          }
	    }
	}
	
