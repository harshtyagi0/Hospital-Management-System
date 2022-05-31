package com.pack.signUp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crud.util.DatabaseUtil;

/**
 * Servlet implementation class appoint
 */
@WebServlet("/appoint")
public class appoint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public appoint() {
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
		String insertquery = "INSERT INTO apn_info VALUE(?,?,?,?,?,?)";
		Connection con;
		try {
			con = DatabaseUtil.getConnection();
			PreparedStatement st = con.prepareStatement(insertquery);
			st.setInt(1, Integer.parseInt(request.getParameter("pid")));
			st.setString(2, request.getParameter("name"));
			st.setString(3, request.getParameter("dname"));
			st.setString(4, request.getParameter("specin"));
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);

			String dateInString = request.getParameter("adate");
			Date date = formatter.parse(dateInString);
			st.setDate(5, (java.sql.Date) date);
			String myTime = request.getParameter("atime"); 
			Time time = new Time (Long.parseLong(myTime));
			st.setTime(7, time);
			
			int row = st.executeUpdate();
			System.out.println(row + " row inserted");
			PrintWriter out = response.getWriter();
			out.print("Sucess" + row);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
