package net.mobilia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModifyController implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		String[] phone = {"010", "011", "016", "017", "018", "019"};
		String[] email = {"naver.com", "daum.net", "gmail.com", "nate.com", "직접 입력"};
		request.setAttribute("phone", phone);
		request.setAttribute("email", email);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./views/member/modify.jsp"); 
		return forward;
	}

}
