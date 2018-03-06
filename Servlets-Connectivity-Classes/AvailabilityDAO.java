package com.talentsprint.availabilitydao;

import java.sql.*;

import com.talentsprint.availabilitybean.AvailabilityBean;
import com.talentsprint.connectionmanager.ConnectionManager;

public class AvailabilityDAO {
	static Connection currentCon = null;
	   static ResultSet rs = null;  
	   
	   public static AvailabilityBean isAvailable(AvailabilityBean bean) {
			
		      //preparing some objects for connection 
		      Statement stmt = null;    
			
		      //String email = bean.getUsername();
		      String roomType = bean.getRoomType();
		      String checkIn = bean.getCheckIn();
		      String checkOut = bean.getCheckOut();
		      String invoice = bean.getPrice();
		      //String roomNo = bean.getRoomNo();
		      
			    
		    /*  String searchQuery =
		            "select r.rn from room1 r,bd3 b where r.rn = b.rn";*/ 
		    	  //String query1 = "select r.rn from room1 r where r.rt_id in(select rt_id from tarrif4 where rt = " + roomType + ") and r.rn not in(select b.rn from bd3 b) limit 1";
		      String query1 = "select r.rn from room1 r INNER JOIN tarrif4 t on r.rt_id = t.rt_id where t.rt = '" + roomType +"' AND r.rn NOT IN (select rn from bd7) limit 1";
			    
		   // "System.out.println" prints in the console; Normally used to trace the process
		   /*System.out.println("Your user name is " + email);          
		   System.out.println("Your password is " + password);*/
		   System.out.println("Query: "+query1);
			    
		   try 
		   {
		      //connect to DB 
		      currentCon = ConnectionManager.getConnection();
		      stmt=currentCon.createStatement();
		      //rs = stmt.executeQuery(searchQuery);	
		      
		      
		      rs = stmt.executeQuery(query1);	
		      //rs = stmt.executeQuery(query2);	        
		      boolean more = rs.next();
		      if (!more) 
		      {
		    	  
		    	  System.out.println("Rooms Not Available");
		    	  bean.setValid(false);
		         
		      } 
			        
		      //if user exists set the isValid variable to true
		      else if (more) 
		      {
		    	  System.out.println("Room Type: "+roomType);
		    	  System.out.println("Check In :"+checkIn);
		    	  System.out.println("Check Out:"+checkOut);
		    	  String roomNo = rs.getString(1);
		    	  System.out.println("Room No:"+roomNo);
			         bean.setCheckIn(checkIn);
			         bean.setCheckOut(checkOut);
			         bean.setRoomNo(roomNo);
			         bean.setRoomType(roomType);
			         bean.setValid(true);
			    	  
				         
		         
		      }
		      
			        
		      //if user exists set the isValid variable to true
		      
		      // if user does not exist set the isValid variable to false
		     /* if(roomType.equalsIgnoreCase("Deluxe Room")){
		    	  
			    	System.out.println("Rooms Not Available");
			    	System.out.println("Room Type: "+roomType);
			    	  System.out.println("Check In :"+chechIn);
			    	  System.out.println("Check Out:"+checkOut);
			    	  System.out.println("Hiii");
			    }*/
		      //if user exists set the isValid variable to true
		      else  
		      {
		        // String firstname = rs.getString("fname");
		         //String lastName = rs.getString("lName");
		    	  
		    	 /* String roomType1 = rs.getString("roomType");
		    	  String chechIn1 = rs.getString("checkIn");
		    	  String checkOut1 = rs.getString("checkOut");
		    	  System.out.println("Room Type: "+roomType1);
		    	  System.out.println("Check In :"+chechIn1);
		    	  System.out.println("Check Out:"+checkOut1);
			     	*/
		         //System.out.println("Welcome " + username1);
		        // bean.setFname(firstname);
		         //bean.setLname(lastName);
		         //bean.setValid(true);
		    	  System.out.println("Log In failed:");
		      }
		   } 

		   catch (Exception ex) 
		   {
		      System.out.println("Log In failed: An Exception has occurred! " + ex);
		   } 
			    
		   //some exception handling
		   finally 
		   {
		      if (rs != null)	{
		         try {
		            rs.close();
		         } catch (Exception e) {}
		            rs = null;
		         }
			
		      if (stmt != null) {
		         try {
		            stmt.close();
		         } catch (Exception e) {}
		            stmt = null;
		         }
			
		      if (currentCon != null) {
		         try {
		            currentCon.close();
		         } catch (Exception e) {
		         }

		         currentCon = null;
		      }
		   }

		return bean;
			
		   }	

}
