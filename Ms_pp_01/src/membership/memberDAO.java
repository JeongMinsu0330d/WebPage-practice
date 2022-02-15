package membership;


import utils.databaseUtil;

public class memberDAO extends databaseUtil{

	public memberDAO(String drv,String url, String id,String pwd) {
		super(drv,url,id,pwd);
	}
	
	// 기능 : 로그인  >>test 데이터: user1 ,user2 , user3
	public memberDTO doLogin(String user_id ,String user_pwd) {
		
		memberDTO mdto = new memberDTO();
		String query = "select * from `member` where id = ? and pass = ?";
		
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, user_id);
			psmt.setString(2, user_pwd);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				
				mdto.setUser_id(rs.getString("id"));
				mdto.setUser_pwd(rs.getString("pass"));
				mdto.setUser_name(rs.getString(3));
				mdto.setRegidate(rs.getString(4));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return mdto;
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////
	// 기능 : 회원 가입
	public boolean join(String id,String pwd,String name) {
		String query = " INSERT INTO `member` VALUES(?,?,?,now())";
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, id);
			psmt.setString(2, pwd);
			psmt.setString(3,name);
			
			psmt.executeUpdate();
			
		}catch(Exception e) { e.printStackTrace(); }
		
		
		return true;
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	// 기능 : 로그아웃
	public void doLogout() {
		
		
		
	}
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////

	// 기능 : 아이디 중복 확인
	public boolean dupFunc(String id) {
		
		String query = "select id from `member` where id like ?";
		try {
				psmt = conn.prepareStatement(query);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if(rs.next()) {
					return false;
				}
				
			}catch(Exception e) {e.printStackTrace();}
		
		
		return true;
	}
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	// 기능 : 
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////
	// 기능 : 

}
