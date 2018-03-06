package com.talentsprint.CancelBookingServlet;

import com.mysql.jdbc.PreparedStatement;
import com.talentsprint.availabilitybean.AvailabilityBean;
import com.talentsprint.connectionmanager.ConnectionManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class ConfirmBooking
 */
@WebServlet("/CancelBooking")
public class CancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value = request.getParameter("id");
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection currentCon = null;
			 
			 HttpSession session = request.getSession(true);
			 AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));  
			 String roomNo = availabilityUser.getRoomNo();
			   Statement stmt = null; 
			 currentCon = ConnectionManager.getConnection();
		      
		      PreparedStatement ps=(PreparedStatement) currentCon.prepareStatement
	                  ("DELETE FROM bd7 WHERE rn= '"+roomNo+"'");
		      System.out.println(roomNo);
		      System.out.println("Executing");
		      int i=ps.executeUpdate();
		      System.out.println(i);
		      System.out.println("Executing");
		      
	          if(i>0)
	          {
	        	 // System.out.println("Hii"); 
	            //out.println("Booking has been cencelled!!");
	        	  response.sendRedirect("Guest Booking.jsp");
	            
	           
	          }
		    }
		    catch(Exception e){
		        e.printStackTrace();
		    }
	}

}
