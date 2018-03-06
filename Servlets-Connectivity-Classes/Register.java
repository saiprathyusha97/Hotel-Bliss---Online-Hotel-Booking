

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.talentsprint.connectionmanager.ConnectionManager;
import com.talentsprint.userbean.UserBean;
import com.talentsprint.userdao.UserDAO;

import java.sql.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String DateConversionQuery = "select str_to_date('"+dob+"','%d-%m-%Y') "; 
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/sample","root","sush131097");

        PreparedStatement ps=con.prepareStatement
                  ("insert into reg2(fname,lname,email,Contact,Password,dob,Gender) values(?,?,?,?,?,?,?)");
        

        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, email);
        ps.setString(4, contact);
        ps.setString(5, password);
        ps.setString(6, dob);
        ps.setString(7, gender);
        //ps.setInt(7, 1);
        
        try
		{	    

		     UserBean user = new UserBean();
		    // user.setEmail_Id(request.getParameter("email"));
		     user.setPassword(request.getParameter("password"));
		     user.setFname(request.getParameter("fname"));
		     user.setLname(request.getParameter("lname"));
		     

		     user = UserDAO.login(user);
			   		    
		    
		        HttpSession session = request.getSession(true);	    
		          session.setAttribute("currentSessionUser",user); 
		          response.sendRedirect("HomePage.jsp"); //logged-in page      		
		     
			        
		     
		} 
				
				
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
        
        int i=ps.executeUpdate();
        
        Connection currentCon = null;
        ResultSet rs = null;  
        Statement stmt = null;
        
        UserBean bean = new UserBean();
        
        String query = "select gid from reg2 where email ='"+email+"'";
        currentCon = ConnectionManager.getConnection();
        stmt=currentCon.createStatement();
        rs = stmt.executeQuery(query);	        
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
           
  	     	
           //System.out.println("Welcome " + username1);
           bean.setFname(firstname);
           bean.setLname(lastName);
           bean.setContact(contact_no);
           
           bean.setValid(true);
        }
        
          if(i>0)
          {
            out.println("You are sucessfully registered!!!");
            response.sendRedirect("HomePage.jsp");
            out.println(DateConversionQuery);
          }
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	}

}
