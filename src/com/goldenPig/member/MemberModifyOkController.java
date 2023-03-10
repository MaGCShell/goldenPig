package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class MemberModifyOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = memberDAO.select(memberId);		
		
		req.setAttribute("member", memberVO);
		
		result.setPath("/templates/account/account_modify.jsp");
		result.setRedirect(false);
		
		return result;
		
	}
}
