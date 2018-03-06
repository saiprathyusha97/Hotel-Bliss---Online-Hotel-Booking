package com.talentsprint.CheckAvailabilityServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.talentsprint.availabilitybean.AvailabilityBean;
import com.talentsprint.availabilitydao.AvailabilityDAO;

/**
 * Servlet implementation class CheckAvailabilityServlet
 */
@WebServlet("/CheckAvailabilityServlet")
public class CheckAvailabilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAvailabilityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			AvailabilityBean availability = new AvailabilityBean();
			availability.setRoomType(request.getParameter("roomtype"));
			availability.setCheckIn(request.getParameter("in"));
			availability.setCheckOut(request.getParameter("out"));
			
			
			
			availability = AvailabilityDAO.isAvailable(availability);
			HttpSession session = request.getSession(true);
			session.setAttribute("BookingUser",availability);    
	          
			
			if((availability.getRoomType()).equalsIgnoreCase("Deluxe")){
				if(availability.isValid()){
					response.sendRedirect("Deluxe.jsp");
				}
				else {
					response.sendRedirect("DeluxeNA.jsp");
				}
				
				} 
		          
				
			
			else if((availability.getRoomType()).equalsIgnoreCase("Executive")){
				//HttpSession session = request.getSession(true);
				//session.setAttribute("BookingUser",availability); 
			          response.sendRedirect("Executive.jsp");
				
			}
			else if((availability.getRoomType()).equalsIgnoreCase("Luxury")){
				//HttpSession session = request.getSession(true);
				//session.setAttribute("BookingUser",availability); 
				 response.sendRedirect("Luxury.jsp");
				
				
		          
				
			}	
			else if((availability.getRoomType()).equalsIgnoreCase("Suite")){
				//HttpSession session = request.getSession(true);
				//session.setAttribute("BookingUser",availability);
				if(availability.isValid()){
					response.sendRedirect("Suite.jsp");

				} else{
					response.sendRedirect("SuiteNA.jsp");
				}
			}
			          
				
				
		          
				
				
			
		}
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
