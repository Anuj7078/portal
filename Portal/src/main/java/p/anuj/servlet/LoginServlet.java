package p.anuj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p.anuj.connection.*;
import p.anuj.dao.*;
import p.anuj.model.*;

@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String options = request.getParameter("options");
            try {
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/portal?useSSL=false","root","Anuj@2711");
            	PreparedStatement pst = con.prepareStatement("select * from login_data where uemail=? and upass=?");
            	pst.setString(1, email);
                pst.setString(2, password);
                ResultSet rs= pst.executeQuery();
                if (rs.next()) {
                	String s1= rs.getString("options");
                	if(options.equalsIgnoreCase("ANUJ")&& s1.equalsIgnoreCase("anuj")) {
                		response.sendRedirect("ANUJ.jsp");
                	}
                	else if(options.equalsIgnoreCase("NITIN")&& s1.equalsIgnoreCase("nitin")) {
                		response.sendRedirect("NITIN.jsp");
                	}
                	else if(options.equalsIgnoreCase("KUNAL")&& s1.equalsIgnoreCase("kunal")) {
                		response.sendRedirect("KUNAL.jsp");
                	}
                	else {
                		response.sendRedirect("login.jsp");
                	}
                }
            }catch(Exception e) {
            	
            }
	}
	}
}
