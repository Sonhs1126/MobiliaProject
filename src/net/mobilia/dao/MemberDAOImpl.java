package net.mobilia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.mobilia.vo.MemberVO;

public class MemberDAOImpl {
	
	Connection con=null;//db연결 con
	PreparedStatement pt=null;//쿼리문 수행
	Statement st=null;//쿼리문 수행
	ResultSet rs=null;//검색 결과 레코드를 저장할 rs
	DataSource ds=null;//DBCP 커넥션 풀 관리 ds
	String sql=null;//쿼리문 저장변수
	
	public MemberDAOImpl() {
		
		try {
			
			Context ctx=new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");
			//커넥션 풀 관리 ds 생성
			
		}catch(Exception e) {e.printStackTrace();}
	}//생성자

	
	//회원 
	public int insertMember(MemberVO m) {

		return 0;
	}


	//아이디 중복검색
	public MemberVO idCheck(String id) {

		MemberVO m=null;
		
try {
			con=ds.getConnection();//커넥션 풀로 관리 ds로 db연결 con 생성
			st=con.createStatement();
			sql="select * from m_member where m_id='"+id+"'";
			rs=st.executeQuery(sql);//검색 쿼리문 수행해서 결과 회원정보를 rs에 저장
			
			if(rs.next()) {
				m=new MemberVO();
				m.setM_id(rs.getString("m_id"));
			}
			
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(st != null) st.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		
		return null;
	}


	public void updateMember(MemberVO m) {
		
		try {
			con = ds.getConnection();
			sql = "update m_member set m_pwd=?, m_name=?, m_post=?, m_roadAddr=?, m_jibunAddr=?,"
					+ "m_detailAddr=?, m_phone01=?, m_phone2=?, m_phone3=?, mail_id=?, mail_domain=?,"
					+ "m_birth01=?, m_birth02=?, m_birth03=?";
			pt = con.prepareStatement(sql);
			pt.setString(1, m.getM_pwd());
			pt.setString(2, m.getM_name());
			pt.setString(3, m.getM_post());
			pt.setString(4, m.getM_roadAddr());
			pt.setString(5, m.getM_jibunAddr());
			pt.setString(6, m.getM_detailAddr());
			pt.setString(7, m.getM_phone01());
			pt.setString(8, m.getM_phone02());
			pt.setString(9, m.getM_phone03());
			pt.setString(10, m.getMail_id());
			pt.setString(11, m.getMail_domain());
			pt.setString(12, m.getM_birth01());
			pt.setString(13, m.getM_birth01());
			pt.setString(14, m.getM_birth01());

		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt != null) pt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		
	}//updateMember()

}
