package sample;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/admin_userdetails")
public class admin_userdetails extends HttpServlet {
    
    @Override
      protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url       = "jdbc:mysql://localhost:3306/Project_users";
        String user      = "root";
        String password  = "root";
        
    
       Connection conn;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(url, user, password);
//             String userid=first_name.charAt(0)+last_name;
                String query ="select * from users";
                PreparedStatement ps=conn.prepareStatement(query);  
                ResultSet rs=ps.executeQuery();
                 ArrayList a1=new ArrayList<>();
                ArrayList a2=new ArrayList<>();
                ArrayList a3=new ArrayList<>();
                ArrayList a4=new ArrayList<>();
                ArrayList a5=new ArrayList<>();
                while(rs.next()){
                         String user_id = rs.getString("user_id");
                         String fisrt_name = rs.getString("first_name");
                         String last_name = rs.getString("last_name");
                         int age = rs.getInt("age");
                         long phone_number = rs.getLong("phone_number");
                         a1.add(user_id);
                         a2.add(fisrt_name);
                         a3.add(last_name);
                         a4.add(age);
                         a5.add(phone_number);
                }
                System.out.println(a1+""+a2+""+a3+""+a4+""+a5);
     req.setAttribute("list1", a1);
     req.setAttribute("list2", a2);
     req.setAttribute("list3", a3);
     req.setAttribute("list4", a4);
     req.setAttribute("list5", a5);
//     req.getRequestDispatcher("erorr.jsp").forward(req, resp);
     req.getRequestDispatcher("userdetails.jsp").forward(req, resp);
         } catch (SQLException | ClassNotFoundException ex) {
             System.err.println(ex);
             req.getRequestDispatcher("erorr.jsp").forward(req, resp);
             
         }
           
      }
}
