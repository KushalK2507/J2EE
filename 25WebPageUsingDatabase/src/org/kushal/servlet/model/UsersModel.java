package org.kushal.servlet.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.kushal.servlet.entity.Users;

public class UsersModel {

	public List<Users> listUsers(DataSource dataSource) {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Users> listUsers = new ArrayList<Users>();
		try {
			connection = dataSource.getConnection();
			String query = "select * from users";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				listUsers.add(new Users(rs.getInt("user_id"), rs.getString("username"), rs.getString("email")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUsers;
	}

	public int createUser(DataSource datasource, Users newUser) {
		Connection connection = null;
		PreparedStatement preparedStmt = null;
		int result = 0;
		try {
			connection = datasource.getConnection();
			String userName = newUser.getUsername();
			String eMail = newUser.getEmail();
			String query = "INSERT INTO USERS(username,email) values (?,?)";
			preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, userName);
			preparedStmt.setString(2, eMail);
			result = preparedStmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				preparedStmt.close();
			} catch (SQLException e) {
			}

		}
		return result;
	}

	public int updateUser(DataSource dataSource, Users updateUser) {
		Connection connection = null;
		PreparedStatement preparedStmt = null;
		int result = 0;
		try {
			connection = dataSource.getConnection();
			String userName = updateUser.getUsername();
			String eMail = updateUser.getEmail();
			int userId = updateUser.getUser_id();
			String query = "update users set username=? , email=? where user_id=?";
			preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, userName);
			preparedStmt.setString(2, eMail);
			preparedStmt.setInt(3, userId);
			result = preparedStmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				preparedStmt.close();
			} catch (SQLException e) {
			}

		}
		return result;

	}

	public int deleteUser(DataSource dataSource, Users deleteUser) {
		Connection connection = null;
		PreparedStatement preparedStmt = null;
		int result = 0;
		try {
			connection = dataSource.getConnection();
			int userId = deleteUser.getUser_id();
			String query = "delete from users where user_id=?";
			preparedStmt = connection.prepareStatement(query);
			preparedStmt.setInt(1, userId);
			result = preparedStmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				preparedStmt.close();
			} catch (SQLException e) {
			}

		}
		return result;

	}

}
