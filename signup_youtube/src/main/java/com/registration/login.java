package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */

public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		javax.servlet.http.HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employe?useSSl=false", "root", "Durgarao@2");
			
			// Correct SQL query
			PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?");
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			
			ResultSet rs = pst.executeQuery();
			
			if (rs.next()) {
				// Retrieve uname from the result set and set it as a session attribute
				session.setAttribute("name", rs.getString("uname"));
				dispatcher = request.getRequestDispatcher("index.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
