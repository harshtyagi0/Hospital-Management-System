package com.pack.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crud.util.DatabaseUtil;

/**
 * Servlet implementation class dLogin
 */
@WebServlet("/dLogin")
public class dLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String id;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("UserName");
		String pwd = request.getParameter("pwd");
		String sql ="SELECT * FROM doctor where name='"+name+"'";
		Connection con;
		PreparedStatement st;
		try {
			con = DatabaseUtil.getConnection();

			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
		
			String pwdd = null;
			while (rs.next()) {
				pwdd = rs.getString("password");
				id= Integer.toString(rs.getInt("dId"));
			}
			if (pwd.equalsIgnoreCase(pwdd)) {
				System.out.println("Login");
				request.getRequestDispatcher("doctor_dash.jsp?dId="+id+"&name="+name+"").forward(request, response);
			}

			else {
				request.setAttribute("error", "Invalid username/password.");
				request.getRequestDispatcher("dlogin.jsp").forward(request, response);
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
