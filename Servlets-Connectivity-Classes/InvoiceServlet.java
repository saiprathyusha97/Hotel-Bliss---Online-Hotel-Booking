package com.talentsprint.guestInvoice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.talentsprint.availabilitybean.AvailabilityBean;
import com.talentsprint.connectionmanager.ConnectionManager;
import com.talentsprint.userbean.UserBean;;

/**
 * Servlet implementation class InvoiceServlet
 */
@WebServlet("/InvoiceServlet")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InvoiceServlet() {
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
		Connection currentCon = null;
		   ResultSet rs = null;  
		   Statement stmt = null; 
		
		//PrintWriter out = response.getWriter();
     HttpSession session = request.getSession(true);
     UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
     AvailabilityBean availabilityUser = (AvailabilityBean)(session.getAttribute("BookingUser"));
     String email = currentUser.getEmail_Id();
     
     String roomNo = availabilityUser.getRoomNo();
     String roomType = availabilityUser.getRoomType();
     String checkIn = availabilityUser.getCheckIn();
     String checkOut = availabilityUser.getCheckOut();
     String price = availabilityUser.getPrice();
     String total = availabilityUser.getTotal();
     
       
     String query2 = "select rt_id from tarrif4 where rt = '"+roomType+"'";
     
     String query3 = "select price from tarrif4 where rt = '"+roomType+"'";
     
     String sDate1 = checkIn;
	    String sDate2 = checkOut;
	    Date date1;
	    Date date2;
		
	    
			    
     
     try{
     	
     		date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
			date2 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate2);
			long diff = date2.getTime()- date1.getTime();
		    long diffhours = diff/(60 * 60 * 1000);
		    long diffdays = diffhours/24;
		    diffdays = (diffdays/30) + 1;
		    System.out.println("no:of days = "+diffdays);
     	
     	
     	
			currentCon = ConnectionManager.getConnection();
		      stmt=currentCon.createStatement();
		      
		      String roomTypeId = null;
		      //String price = null;
		      double invoice = 0;
		      double totalPrice = 0;
		      
		      
		      
		        
			    rs = stmt.executeQuery(query2);	
			    boolean more1 = rs.next();
			    if (!more1) 
			      {
			         System.out.println("Invalid Credentials!!");
			      } 
			        
			      //if user exists set the isValid variable to true
			      else if (more1) 
			      {
			    	  roomTypeId = rs.getString("rt_id");
				      

			      }
			    rs = stmt.executeQuery(query3);	
			    boolean more3 = rs.next();
			    if (!more3) 
			      {
			         System.out.println("Invalid Price!!");
			      } 
			        
			      //if user exists set the isValid variable to true
			      else if (more3) 
			      {
			    	  price = rs.getString("price");
			    	  invoice = Double.parseDouble(price); 
			    	  invoice = invoice * diffdays;
			    	  totalPrice = invoice + 315.75;
			    	  total = String.valueOf(totalPrice);
			    	  price = String.valueOf(invoice);
				      System.out.println("Price = "+price);
				      availabilityUser.setPrice(price);
				      availabilityUser.setTotal(total);
				      System.out.println("Total = "+total);

			      }
			    Class.forName("com.mysql.jdbc.Driver");

				//creating connection with the database 
			          Connection  con=DriverManager.getConnection
			                     ("jdbc:mysql://localhost:3306/sample","root","sush131097");

			        PreparedStatement ps=(PreparedStatement) con.prepareStatement
			                  ("insert into bd7(email,rn,rt,rt_id,ci,co) values(?,?,?,?,?,?)");
			        

			        ps.setString(1,email);
			        ps.setString(2, roomNo);
			        ps.setString(3, roomType);
			        ps.setString(4, roomTypeId);
			        ps.setString(5, checkIn);
			        ps.setString(6, checkOut);
			        
			        
			        int i=ps.executeUpdate();
			        
			          if(i>0 && more3)
			          {
			            response.sendRedirect("InvoiceWOR.jsp");
			            
			           
			          }
			          
     } catch(Exception se)
     {
         se.printStackTrace();
     }  

	}

}


