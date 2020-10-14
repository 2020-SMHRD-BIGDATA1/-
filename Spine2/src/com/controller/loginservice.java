package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemDAO;
import com.model.MemDTO;
import com.model.MemDAO;
import com.model.MemDTO;

@WebServlet("/loginservice")
public class loginservice extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String ID=request.getParameter("ID");
		String PW=request.getParameter("PW");
		MemDTO dto = new MemDTO(ID, PW);
		MemDAO dao = new MemDAO();
		MemDTO info = dao.login(dto);
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(info!=null) {
			session.setAttribute("info", info);
			session.removeAttribute("loginfail");
			out.println("<script>opener.location.reload();</script>");
			out.println("<script>window.close('loginservice') </script>");
		}else {
			out.println("<script>alert('로그인 실패'); location.href='log.jsp';</script>");
			out.flush();
		}
		
	}

}
