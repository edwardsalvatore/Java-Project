package sample;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/auth")
public class auth extends HttpServlet {
    @Override
      protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userr=req.getParameter("sambar");
        System.out.println(userr);
        String user_id = req.getParameter("user_id");
        System.out.println(user_id);
        String user_password = req.getParameter("user_password");
        String url       = "jdbc:mysql://localhost:3306/Project_users";
        String user      = "root";
        String password  = "root";
        String userid="";
        Long phone_number=0l;
        String last_name="";
        String fisrt_name="";
        int age=0;
        
               
       Connection conn;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(url, user, password);
//             String userid=first_name.charAt(0)+last_name;
                String query ="select user_password,user_role from user_auth where user_id=?";
                PreparedStatement ps=conn.prepareStatement(query);
                ps.setString(1,user_id);
                 
                ResultSet rs=ps.executeQuery();
                
                      while(rs.next()){
                          String user_pass = rs.getString("user_password");
                         String role = rs.getString("user_role");
                         System.out.print(user_pass);
                         
                         if(user_pass.equals(user_password)){
                             if("Admin".equals(role)){
                                  req.setAttribute("role", role);
                                req.getRequestDispatcher("admin.jsp").forward(req, resp); 
                                    String query3 ="insert into user_logs values(?,now())";
                                    PreparedStatement ps2=conn.prepareStatement(query3);
                                    ps2.setString(1,user_id);
                                    ps2.execute();
                             }
                            if("user".equals(role)){
                                System.out.println("heyy iam");
                                System.out.println(user_id);
                                    String query1 ="select * from users where user_id=?";
                            
                                    PreparedStatement ps1=conn.prepareStatement(query1);
                                       ps1.setString(1,user_id);
                                       
                                     ResultSet rs1=ps1.executeQuery();
                                      while(rs1.next()){
                                       user_id = rs1.getString("user_id");
                                       last_name = rs1.getString("last_name");
                                       fisrt_name = rs1.getString("first_name");
                                        age = rs1.getInt("age");
                                        phone_number = rs1.getLong("phone_number");
                                      }       
                                    String query3 ="insert into user_logs values(?,now())";
                                    PreparedStatement ps2=conn.prepareStatement(query3);
                                    ps2.setString(1,user_id);
                                    ps2.execute();
                                        req.setAttribute("user_id", userid);
                                        req.setAttribute("name", last_name);
                                        req.setAttribute("phone", phone_number);
                                        req.setAttribute("last_name", last_name);
                                        req.setAttribute("first_name", fisrt_name);
                                        req.setAttribute("age", age);
                                       System.out.print(user_pass);
                                 req.getRequestDispatcher("home.jsp").forward(req, resp);
                             }
                            
                         }
                         else{
                             System.out.print("password didnt match or user not exist");
                             int a=1;
                             req.setAttribute("a", a);
                             
                             req.getRequestDispatcher("inmain.jsp").forward(req, resp);
                         }
                         System.out.print(role);
                        
                }
         } catch (SQLException | ClassNotFoundException ex) {
             System.err.println(ex);
             req.getRequestDispatcher("erorr.jsp").forward(req, resp);
         }
      }
}
