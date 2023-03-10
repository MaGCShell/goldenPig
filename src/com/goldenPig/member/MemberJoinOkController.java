package com.goldenPig.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class MemberJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO  memberVO = new MemberVO();
		Result result = new Result(); 
		
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPassword(new String(Base64.getEncoder().encode((req.getParameter("memberPassword").getBytes()))));
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberNickName(req.getParameter("memberNickName"));
		memberVO.setMemberPhoneNumber(req.getParameter("memberPhoneNumber"));
		memberVO.setMemberBirth(req.getParameter("memberBirthYear")+ "-"+ req.getParameter("memberBirthMonth") +"-"+ req.getParameter("memberBirthDay"));
		
		memberDAO.join(memberVO);
		
		result.setPath(req.getContextPath() + "/login.member");
		result.setRedirect(true);
		
		return result;
	}

}
