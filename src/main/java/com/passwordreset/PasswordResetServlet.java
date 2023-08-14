package com.passwordreset;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registrationservlet.UserDao;

@WebServlet("/PasswordResetServlet")
public class PasswordResetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PasswordResetServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting client data
		String email = request.getParameter("email");
		String password = request.getParameter("oldpassword");
		String newpassword = request.getParameter("newpassword");
		String confirmpassword = request.getParameter("confirmpassword");

		// calling DAO layer to verify login details in DB
		boolean result = false;
		try {
			result = UserDao.checkinglogin(email, password);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		if (result) {
			// If user exists in DB , veryfying newpassword and confirmpassword to match ,
			// if matched then reset password otherwise not ,
			// and forwards request to respective view
			if (newpassword.equals(confirmpassword)) {
				int res = UserDao.passwordreset(email, newpassword);
				if (res == 1) {
					request.setAttribute("user", email);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("resetsuccess.jsp");
					requestDispatcher.forward(request, response);

				} else {
					request.setAttribute("user", email);
					RequestDispatcher dispatcher = request.getRequestDispatcher("resetfail.jsp");
					dispatcher.include(request, response);
				}

			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("passwordmismatch.jsp");
				dispatcher.forward(request, response);
			}

		} else {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("resetfail.jsp");
			requestDispatcher.forward(request, response);
		}

	}
}
