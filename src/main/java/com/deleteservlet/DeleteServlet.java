package com.deleteservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registrationservlet.UserDao;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting client data
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		// calling DAO layer to delete user data in DB
		int res = 0;
		try {
			res = UserDao.deleteUser(password, email);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// System.out.println(res);
		// verifying if record deleted or not and forwarding request to respective view
		if (res > 0) {
			request.setAttribute("result", res);
			RequestDispatcher dispatcher = request.getRequestDispatcher("unregistersuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("unregisterfail.jsp");
			dispatcher.forward(request, response);
		}

	}
}
