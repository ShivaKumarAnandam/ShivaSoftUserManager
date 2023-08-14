package com.editservlet;

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

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting request data
		String name = request.getParameter("name");

		// calling Dao layer
		User user = new User();
		try {
			ResultSet set = UserDao.singleUser(name);
			if (set != null) {
				while (set.next()) {
					user.setUsername(set.getString(1));
					user.setPassword(set.getString(2));
					user.setEmail(set.getString(3));

					String[] address = set.getString(8).split(",");
					user.setArea(address[0]);
					user.setCity(address[1]);
					user.setState(address[2]);
					user.setPincode(address[3]);

					user.setComments(set.getString(9));

					System.out.println(user.toString());
				}

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// storing fetched data into request object and forwarding request to respective
		// view
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
		dispatcher.forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting request data
		String username = request.getParameter("username");
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
		String cpassword = request.getParameter("cpassword");

		// verifying password and confirmpassword ,if matches calls Dao layer to update
		// data in DB ,
		if (password.equals(cpassword)) {
			int result = UserDao.editData(username, password, email, country, finalqual, gender, finaltech, finaladdr,
					comments);

			// verifying whether data updated or not and forwarding request to respective
			// view
			if (result == 1) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("editsuccess.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("editfail.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("editfail.jsp");
			dispatcher.forward(request, response);
		}

	}
}
