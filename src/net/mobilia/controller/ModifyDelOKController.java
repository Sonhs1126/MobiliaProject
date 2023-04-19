package net.mobilia.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mobilia.dao.MemberDAOImpl;
import net.mobilia.vo.MemberVO;

public class ModifyDelOKController implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		if(id==null) {
			out.println("<script>");
			out.println("alert('다시 로그인 하세요!');");
			out.println("location='main.net';");
			out.println("</script>");
		}else {
			MemberDAOImpl mdao = new MemberDAOImpl();
			request.setCharacterEncoding("UTF-8");
			
			String del_pwd = request.getParameter("del_pwd");
			String m_delcont = request.getParameter("m_delcont");
			
			MemberVO m_pwd = mdao.getMember(id);
			
			if(!m_pwd.getM_pwd().contentEquals(del_pwd)) {
				out.println("<script>");
				out.println("alert('비밀번호가 일치하지 않습니다!);");
				out.println("</script>");
			}else {
				MemberVO mvo = new MemberVO();
				mvo.setM_id(id); mvo.setM_delcont(m_delcont);
				mdao.delMem(mvo);
			}
		}
		return null;
	}

}
