package com.pack.delete;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Delete
 */
@WebServlet("/Delete_up")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		String sql ="DELETE FROM apn_info where pId='"+request.getParameter("pId")+"'";
		String s = "SELETE * FROM apn_info where pId='"+request.getParameter("pId")+"'";
		Connection con;
		PreparedStatement st;
		try {
			con = DatabaseUtil.getConnection();
			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
			String name = rs.getString("dname");
			st.executeUpdate();
			
			PrintWriter out = response.getWriter();
			
			out.print("<html><body style=\"text-aling:center;\">");
			out.print("<h2>Deteled</h2>");
			out.print("</body></html>");

//			request.getRequestDispatcher("delete.jsp?name="+name).forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
