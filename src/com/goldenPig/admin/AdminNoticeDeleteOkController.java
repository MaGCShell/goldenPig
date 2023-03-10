package com.goldenPig.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.mysql.cj.xdevapi.JsonParser;

public class AdminNoticeDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		
		String[] arr = req.getParameterValues("noticeIdArr");
		
		for (int i = 0; i < arr.length; i++) {
			adminDAO.adminNoticeDelete(Long.parseLong(arr[i]));
		}
		
		return null;
	}

}
