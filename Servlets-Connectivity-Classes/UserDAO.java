package com.talentsprint.userdao;

import java.sql.*;

import com.talentsprint.connectionmanager.ConnectionManager;
import com.talentsprint.userbean.UserBean;

public class UserDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;  
	
	
	
   public static UserBean login(UserBean bean) {
	
      //preparing some objects for connection 
      Statement stmt = null;    
	
      String email = bean.getEmail_Id();
      String password = bean.getPassword();   
	    
      String searchQuery =
            "select * from reg2 where email='"
                     + email
                     + "' AND password='"
                     + password
                     + "'";
	    
   // "System.out.println" prints in the console; Normally used to trace the process
   System.out.println("Your user name is " + email);          
   System.out.println("Your password is " + password);
   System.out.println("Query: "+searchQuery);
   //String query = "select gid from reg2 where email ='"+email+"'";
   
   try 
   {
      //connect to DB 
      currentCon = ConnectionManager.getConnection();
      stmt=currentCon.createStatement();
      rs = stmt.executeQuery(searchQuery);	        
      boolean more = rs.next();
	       
      // if user does not exist set the isValid variable to false
      if (!more) 
      {
         System.out.println("Invalid Credentials!!");
         bean.setValid(false);
      } 
	        
      //if user exists set the isValid variable to true
      else if (more) 
      {
         String firstname = rs.getString("fname");
         String lastName = rs.getString("lName");
         String contact_no = rs.getString("contact");
         String dob = rs.getString("dob");
         String gender = rs.getString("gender");
	     	
         //System.out.println("Welcome " + username1);
         bean.setFname(firstname);
         bean.setLname(lastName);
         bean.setContact(contact_no);
         bean.setDate_Of_Birth(dob);
         bean.setGender(gender);
         bean.setValid(true);
      }
      /*rs = stmt.executeQuery(query);	        
      boolean more1 = rs.next();
	       
      // if user does not exist set the isValid variable to false
      if (!more1) 
      {
         System.out.println("Invalid Credentials!!");
         bean.setValid(false);
      } 
	        
      //if user exists set the isValid variable to true
      else if (more1) 
      {
         String firstname = rs.getString("fname");
         String lastName = rs.getString("lName");
         String contact_no = rs.getString("contact");
         String guest_id = rs.getString("gid");
	     	
         //System.out.println("Welcome " + username1);
         bean.setFname(firstname);
         bean.setLname(lastName);
         bean.setContact(contact_no);
         bean.setGid(guest_id);
         bean.setValid(true);
      }*/
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
