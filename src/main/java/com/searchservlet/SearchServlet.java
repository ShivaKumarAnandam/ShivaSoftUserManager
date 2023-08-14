package com.searchservlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registrationservlet.UserDao;
import com.registrationservlet.UserData;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting client data
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// calling DAO layer to verify user present in DB
		boolean result = false;
		try {
			result = UserDao.checkinglogin(email, password);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		// if user found, fetch total data from DB and forward to respective view
		if (result) {
			ResultSet set = UserDao.searchByEmailAndPassword(email, password);
			UserData userdt = new UserData();
			if (set != null) {
				try {
					while (set.next()) {
						userdt = new UserData(set.getString(1), set.getString(2), set.getString(3), set.getString(4),
								set.getString(5), set.getString(6), set.getString(7), set.getString(8),
								set.getString(9));
					}
				} catch (SQLException e) {

					e.printStackTrace();
				}

				request.setAttribute("user", userdt);
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchsuccess.jsp");
				dispatcher.forward(request, response);

			} else {
				request.setAttribute("user", userdt);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("searchfail.jsp");
				requestDispatcher.forward(request, response);
			}
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("searchfail.jsp");
			dispatcher.include(request, response);
		}
	}
}
