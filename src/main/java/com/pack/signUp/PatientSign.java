package com.pack.signUp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crud.util.DatabaseUtil;

/**
 * Servlet implementation class PatientSign
 */
@WebServlet("/PatientSign")
public class PatientSign extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientSign() {
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
		
		String insertquery = "INSERT INTO patient VALUE(?,?,?,?,?,?,?,?,?)";
		Connection con;
		try {
			con = DatabaseUtil.getConnection();
			PreparedStatement st = con.prepareStatement(insertquery);
			st.setString(1, request.getParameter("name"));

			st.setInt(2, Integer.parseInt(request.getParameter("age")));

			st.setString(3, request.getParameter("gender"));

			st.setLong(4,Long.parseLong(request.getParameter("phone")));
			st.setString(5, request.getParameter("address"));
			st.setString(6, request.getParameter("pass"));
			st.setString(7, request.getParameter("issue"));
			st.setString(8, request.getParameter("sissue"));
			st.setInt(9, Integer.parseInt(request.getParameter("pid")));
			int row = st.executeUpdate();
			System.out.println(row + " row inserted");
			PrintWriter out = response.getWriter();
			out.print("<h2>Sucess"+row+"</h2>");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
