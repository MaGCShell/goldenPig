package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

public class AdminFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
	
		
			
//		저축 게시판 목록
		if(target.equals("/bankList")) {
			result = new Result();
			
		}else if(target.equals("/bannerList")) {
			new AdminBannerListController().execute(req, resp);
		
		}else if(target.equals("/bannerRegister")) {
			new AdminBannerRegisterController().execute(req, resp);
			
		}else if(target.equals("/bannerRegisterOk")) {
			new AdminBannerRegisterOkController().execute(req, resp);

//		게시판 상세보기
		}else if(target.equals("/boardDetail")) {
			new AdminBoardDetailController().execute(req, resp);
			
		}else if(target.equals("/boardList")) {
			new AdminBoardListController().execute(req, resp);
			
		}else if(target.equals("/freeBoardList")) {
			new AdminFreeBoardListController().execute(req, resp);
		
		}else if(target.equals("/memberList")) {
			result = new AdminMemberListController().execute(req, resp);

//		회원 상세보기	
		}else if(target.equals("/memberDetail")) {
			new AdminMemberDetailController().execute(req, resp);
			
//		회원정보 변경 페이지			
		}else if(target.equals("/memberModify")) {
			new AdminMemberModifyController().execute(req, resp);
			
		}else if(target.equals("/memberModifyOk")) {
			new AdminMemberModifyOkController().execute(req, resp);
			
		}else if(target.equals("/noticeDetail")) {
			new AdminNoticeDetailController().execute(req, resp);

		}else if(target.equals("/noticeModify")) {
			new AdminNoticeModifyController().execute(req, resp);

		}else if(target.equals("/noticeModifyOk")) {
			new AdminNoticeModifyOkController().execute(req, resp);
			
		}else if(target.equals("/noticeList")) {
			new AdminNoticeListController().execute(req, resp);
		
		}else if(target.equals("/noticeWrite")) {
			new AdminNoticeWriteController().execute(req, resp);
			
		}else if(target.equals("/noticeWriteOk")) {
			new AdminNoticeWriteOkController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}

