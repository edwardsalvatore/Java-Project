/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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

/**
 *
 * @author mjawaad
 */
@WebServlet("/usersauth")
public class usersauth  extends HttpServlet{
     @Override
      protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url       = "jdbc:mysql://localhost:3306/Project_users";
        String user      = "root";
        String passwor  = "root";
        
    
       Connection conn;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(url, user, passwor);
//             String userid=first_name.charAt(0)+last_name;
                String query ="select * from user_auth";
                PreparedStatement ps=conn.prepareStatement(query);  
                ResultSet rs=ps.executeQuery();
                 ArrayList a1=new ArrayList<>();
                ArrayList a2=new ArrayList<>();

                while(rs.next()){
                         String user_id = rs.getString("user_id");
                         String password = rs.getString("user_password");
           
                         a1.add(user_id);
                         a2.add(password);
        
                }
                System.out.println(a1+""+a2);
     req.setAttribute("list1", a1);
     req.setAttribute("list2", a2);

//     req.getRequestDispatcher("erorr.jsp").forward(req, resp);
     req.getRequestDispatcher("authusers.jsp").forward(req, resp);
         } catch (SQLException | ClassNotFoundException ex) {
             System.err.println(ex);
             req.getRequestDispatcher("erorr.jsp").forward(req, resp);
         }
      }
}
