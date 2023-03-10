package p.anuj.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user-data")
public class Userdata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("name");
		String uemail= request.getParameter("email");
		String pname= request.getParameter("product-name");
		String umobile= request.getParameter("number");
		String quantity= request.getParameter("quantity");
     	RequestDispatcher dispatcher = null;
     	Connection con= null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal?useSSL=false","root","Anuj@2711");
        	PreparedStatement pst = con.prepareStatement("insert into user_data(pname,quantity,uemail,uname,umobile) values(?,?,?,?,?)");
        	pst.setString(1,pname);
        	pst.setString(2,quantity);
        	pst.setString(3,uemail);
        	pst.setString(4,uname);
        	pst.setString(5,umobile);
        	int rowcount = pst.executeUpdate();
        	dispatcher = request.getRequestDispatcher("Contact.jsp");
        	if(rowcount>0) {
        		request.setAttribute("status","succes");
        	}else {
        		request.setAttribute("status","failed");
        	}
        	dispatcher.forward(request,response);
        }catch(Exception e) {
        	e.printStackTrace();
        }finally {
        	try{
        		con.close();
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        }
	}

}
