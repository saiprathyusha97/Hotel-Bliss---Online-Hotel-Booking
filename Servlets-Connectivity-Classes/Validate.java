import java.sql.*;
public class Validate {
	public static boolean checkUser(String email,String password) 
    {
     boolean st =false;
     //String username="";
     //String contact="";
     try{

	 //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	 //creating connection with the database 
        Connection con=DriverManager.getConnection
                       ("jdbc:mysql://localhost:3306/OnlineHotelBooking","root","sush131097");
        PreparedStatement ps =con.prepareStatement
                ("select * from User_Registration_Table where email_id=? and password=?");
        //ps.setString(1, username);
ps.setString(2, email);
//ps.setString(3, contact);
ps.setString(4, password);
ResultSet rs =ps.executeQuery();
st = rs.next();
       
     }catch(Exception e)
     {
         e.printStackTrace();
     }
        return st;                 
 }   

}
