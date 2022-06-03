package com.pack.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crud.util.DatabaseUtil;

/**
 * Servlet implementation class pLogin
 */
@WebServlet("/pLogin")
public class pLogin extends HttpServlet {
	;
	private static final long serialVersionUID = 1L;
	
	static String id;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("UserName");
		String password = request.getParameter("pwd");

		System.out.println("username: " + username);
		System.out.println("password: " + password);
		String sql ="SELECT * FROM patient where name='"+username+"'";
		Connection con;
		PreparedStatement st;
		try {
			con = DatabaseUtil.getConnection();

			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
			
		
			String pwdd = null;
			while (rs.next()) {
				pwdd = rs.getString("password");
				id= Integer.toString(rs.getInt("Pid"));
			}
			if (password.equalsIgnoreCase(pwdd)) {
				System.out.println("Login");
				request.getRequestDispatcher("patientPage.jsp?Pid="+id+"").forward(request, response);
			}

			else {
				request.setAttribute("error", "Invalid username/password.");
				request.getRequestDispatcher("plogin.jsp").forward(request, response);
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
