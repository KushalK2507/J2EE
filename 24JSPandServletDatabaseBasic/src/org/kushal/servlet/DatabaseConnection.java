package org.kushal.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/DatabaseConnection")
public class DatabaseConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource datasource;

	// In this name will be same as name given in context.xml file.

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Step 1: Initialize the Connection Objects
		PrintWriter out = response.getWriter();
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connection = datasource.getConnection();

			// Step 2: Create a SQL statement String
			String query = "select * from users";
			stmt = connection.createStatement();

			// Step 3: Execute the SQL Query
			rs = stmt.executeQuery(query);

			// Step 4: Process the result set
			while (rs.next()) {
				out.print("<br>" + rs.getString("username"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
