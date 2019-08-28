package org.kushal.servlet.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.kushal.servlet.entity.Users;
import org.kushal.servlet.model.UsersModel;

@WebServlet("/appController")
public class AppController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		switch (page) {
		case "listusers":
			listUsers(request, response);
			break;
		case "deleteuser":
			deleteUser(request, response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Users deleteUser = new Users(Integer.parseInt(request.getParameter("userId")));
		int result = new UsersModel().deleteUser(dataSource, deleteUser);
		if (result != 0) {
			listUsers(request, response);
		} else {
			request.setAttribute("error", "Data Not inserted due to some error");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String form = request.getParameter("form");
		form = form.toLowerCase();
		switch (form) {
		case "adduser":
			Users newUser = new Users(request.getParameter("username"), request.getParameter("email"));
			int result = new UsersModel().createUser(dataSource, newUser);
			if (result != 0) {
				listUsers(request, response);
			} else {
				request.setAttribute("error", "Data Not inserted due to some error");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			break;
		case "updateuser":
			updateuUser(request, response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	private void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Users> listUsers = new ArrayList<>();
		listUsers = new UsersModel().listUsers(dataSource);
		request.setAttribute("listUsers", listUsers);
		request.getRequestDispatcher("listUser.jsp").forward(request, response);
	}

	private void updateuUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Users updateUser = new Users(Integer.parseInt(request.getParameter("userId")), request.getParameter("username"),
				request.getParameter("email"));

		int result = new UsersModel().updateUser(dataSource, updateUser);
		if (result != 0) {
			listUsers(request, response);
		} else {
			request.setAttribute("error", "Data Not inserted due to some error");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

}
