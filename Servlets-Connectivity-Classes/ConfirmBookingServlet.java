package com.talentsprint.confirmbookingservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.talentsprint.availabilitybean.AvailabilityBean;
import com.talentsprint.connectionmanager.ConnectionManager;
import com.talentsprint.userbean.UserBean;
import com.talentsprint.userdao.UserDAO;

/**
 * Servlet implementation class ConfirmBookingServlet
 */
@WebServlet("/ConfirmBookingServlet")
public class ConfirmBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmBookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Connection currentCon = null;
		   ResultSet rs = null;  
		   Statement stmt = null; 
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
        AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));
        String email = currentUser.getEmail_Id();
        String roomNo = availabilityUser.getRoomNo();
        String roomType = availabilityUser.getRoomType();
        String checkIn = availabilityUser.getCheckIn();
        String checkOut = availabilityUser.getCheckOut();
        String query = "select gid from reg2 where email = '"+email+"' limit 1";
        String query1 = "SET FOREIGN_KEY_CHECKS=0";
        String query2 = "select rt_id from tarrif4 where rt = '"+roomType+"'";
        String query3 = "SET FOREIGN_KEY_CHECKS=1";
        
		try{
			currentCon = ConnectionManager.getConnection();
		      stmt=currentCon.createStatement();
		      rs = stmt.executeQuery(query);
		      String gid = null;
		      String roomTypeId = null;
		      rs = stmt.executeQuery(query1);
		      rs = stmt.executeQuery(query2);	      
		    rs = stmt.executeQuery(query3);	
		      while(rs.next()){
		    	  gid = rs.getString("gid");
			      roomTypeId = rs.getString("rt_id");
		      }
		      
		      //rs = stmt.executeQuery(query2);	        
		     // out.println(gid);
		      //out.println(roomTypeId);
	        //loading drivers for mysql
	        Class.forName("com.mysql.jdbc.Driver");

		//creating connection with the database 
	          Connection  con=DriverManager.getConnection
	                     ("jdbc:mysql://localhost:3306/sample","root","sush131097");

	        PreparedStatement ps=(PreparedStatement) con.prepareStatement
	                  ("insert into bd3(gid,rn,rt_id,ci,co) values("+gid+","+roomNo+","+roomTypeId+",'"+checkIn+"',"+checkOut+"'");
	        

	        ps.setString(1, gid);
	        ps.setString(2, roomNo);
	        ps.setString(3, roomTypeId);
	        ps.setString(4, checkIn);
	        ps.setString(5, checkOut);
	       out.println(((ResultSet) ps).getString(gid));
	        
		      
	        try
			{	    

			     UserBean user = new UserBean();
			    // user.setEmail_Id(request.getParameter("email"));
			     user.setPassword(request.getParameter("password"));
			     user.setFname(request.getParameter("fname"));
			     user.setLname(request.getParameter("lname"));
			     

			     user = UserDAO.login(user);
				   		    
			    
			        //HttpSession session = request.getSession(true);	    
			          session.setAttribute("currentSessionUser",user); 
			          //response.sendRedirect("HomePage.jsp"); //logged-in page      		
			     
				        
			     
			} 
	     				
	     				
	     		catch (Throwable theException) 	    
	     		{
	     		     System.out.println(theException); 
	     		}
	        int i=ps.executeUpdate();
	        
	          if(i>0)
	          {
	            out.println("You are sucessfully registered!!!");
	            response.sendRedirect("HomePage.jsp");
	            
	          }
	        
	        }
	        catch(Exception se)
	        {
	            se.printStackTrace();
	        }
	}

}
