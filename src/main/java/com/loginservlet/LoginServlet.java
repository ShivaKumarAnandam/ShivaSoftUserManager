package com.loginservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registrationservlet.UserDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting client data
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// calling DAO layer to verify login details in DB
		// and forwarding request to respective view
		boolean result = false;
		try {
			result = UserDao.checkinglogin(email, password);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (result) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("loginsuccess.jsp");
			dispatcher.include(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("loginfail.jsp");
			dispatcher.include(request, response);
		}
	}
}
