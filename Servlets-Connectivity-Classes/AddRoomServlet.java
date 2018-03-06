
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AddRoomServlet
 */
@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        /*String luxury = request.getParameter("luxury");
        String deluxe = request.getParameter("deluxe"); 
        String executive = request.getParameter("executive");
        String suite = request.getParameter("suite");*/ 
        String room_number = request.getParameter("room_no");
        System.out.println(room_number);
        String roomtype_id = request.getParameter("roomtype");
        
        
        try{
            
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

    	//creating connection with the database 
              Connection  con=DriverManager.getConnection
                         ("jdbc:mysql://localhost:3306/sample","root","sush131097");

            PreparedStatement ps=con.prepareStatement
                      ("insert into room1(rn,rt_id) values(?,?)");
            

            ps.setString(1, room_number);
            ps.setString(2, roomtype_id);
            
            
            /*try
    		{	    

    		     UserBean user = new UserBean();
    		    // user.setEmail_Id(request.getParameter("email"));
    		     //user.setPassword(request.getParameter("password"));
    		     user.setRoom_number(room_number);
    		     user.setRoom_type_id(roomtype_id);
    		     

    		     user = UserDAO.login(user);
    			   		    
    		    
    		        HttpSession session = request.getSession(true);	    
    		          session.setAttribute("currentSessionUser",user); 
    		          response.sendRedirect("HomePage.jsp"); //logged-in page      		
    		     
    			        
    		     
    		} 
    				
    				
    		catch (Throwable theException) 	    
    		{
    		     System.out.println(theException); 
    		}*/
            
            int i=ps.executeUpdate();
            System.out.println(i);
            if(i > 0){
            	out.println("Room Added Successfully");
            	response.sendRedirect("RoomAdded.jsp");
            	
            }
            
           /* Connection currentCon = null;
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
            */
            }
            catch(Exception se)
            {
                se.printStackTrace();
            }
    	}
	}


