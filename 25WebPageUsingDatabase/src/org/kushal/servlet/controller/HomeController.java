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

@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = request.getParameter("page");
		page = page.toLowerCase();
		switch (page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "listusers":
			listUsers(request, response);
			break;
		case "addusers":
			addUsersForm(request, response);
			break;
		case "updateuser":
			updateUserForm(request, response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

	private void updateUserForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);

	}

	private void addUsersForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("addUsers.jsp").forward(request, response);
	}

	private void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/appController?page=listUsers").forward(request, response);
	}

}
