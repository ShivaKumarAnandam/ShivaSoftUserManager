package com.registrationservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting client data
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String[] qualification = request.getParameterValues("qualification");
		String gender = request.getParameter("gender");
		String[] technologies = request.getParameterValues("technologies");
		String[] address = request.getParameterValues("address");
		String comments = request.getParameter("comments");
		String finalqual = String.join(",", qualification);
		String finaltech = String.join(",", technologies);
		String finaladdr = String.join(",", address);

		// calling Dao layer to save data into DB
		UserData user = new UserData(uname, password, email, country, finalqual, gender, finaltech, finaladdr,
				comments);
		int res = 0;
		try {
			res = UserDao.savedata(user);
		} catch (ClassNotFoundException | IOException | SQLException e) {

			e.printStackTrace();
		}

		// verifying if data saved in DB and forwarding request to respective view
		if (res == 1) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("regsuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("regfail.jsp");
			dispatcher.forward(request, response);
		}
	}
}
