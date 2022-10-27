/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author mjawaad
 */
@WebServlet("/getSer")
public class getSer extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String first_name = req.getParameter("first_name");
        String last_name = req.getParameter("last_name");
        Integer age=Integer.valueOf(req.getParameter("age"));
        Long phone_number=Long.valueOf(req.getParameter("phone_number"));
        String user_password = req.getParameter("user_password");
        System.out.println(first_name);
//        Stinrg age = req.getParameter("age");
//        String phone_number = req.getParameter("phone_number");
//        System.err.println(first_name);
        String url       = "jdbc:mysql://localhost:3306/Project_users";
        String user      = "root";
        String password  = "root";
       
       Connection conn;
         try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(url, user, password);
             String userid=first_name.charAt(0)+last_name;
             boolean cond=false;
             int temp=9;
             while(cond==false){
                String query2="select user_id from user_auth where user_id=?";
                    PreparedStatement ps=conn.prepareStatement(query2);
                        ps.setString(1, userid);
                        ResultSet p=ps.executeQuery();
                        if (!p.isBeforeFirst()) {    
                            cond=true;
                        }
                        else{
                           userid=userid.substring(0,userid.length()-1)+temp;
                           temp--;
                        }
                }
             String query ="insert into user_auth" +" values(?,?,?)";
             PreparedStatement ps3=conn.prepareStatement(query);
                ps3.setString(1, userid);
                ps3.setString(2, user_password);
                ps3.setString(3, "user");
                ps3.execute();
             
             String query2 ="insert into users" +" values(?,?,?,?,?)";
             PreparedStatement ps=conn.prepareStatement(query2);
                ps.setString(1, userid);
                ps.setString(2, first_name);
                ps.setString(3, last_name);
                ps.setInt(4, age);
                ps.setLong(5, phone_number);
                System.err.println(ps);

                ps.execute();
                 String query3 ="insert into user_logs values(?,now())";
                PreparedStatement ps5=conn.prepareStatement(query3);
                 ps5.setString(1,userid);
                 ps5.execute();
//             System.out.println(rp);
                String query1="select * from users";
                PreparedStatement ps2=conn.prepareStatement(query1);
                ResultSet rs=ps2.executeQuery();
                while(rs.next()){
                         String user_id = rs.getString("user_id");
                         String lastNam = rs.getString("first_name");
                         String lastNa = rs.getString("last_name");
                         int lastN = rs.getInt("age");
                         long lastNN = rs.getLong("phone_number");
                         System.out.println(user_id+" "+lastNam+" "+lastNa+" "+lastN+" "+lastNN);
                }
                 req.setAttribute("user_id", userid);
                 req.setAttribute("phone", phone_number);
                 req.setAttribute("last_name", last_name);
                 req.setAttribute("age",age);  
                 req.setAttribute("first_name",first_name);
                 req.getRequestDispatcher("home.jsp").forward(req, resp);
//                resp.
//               resp.sendRedirect("main.jsp");
         } catch (SQLException | ClassNotFoundException ex) {
             System.err.println(ex);
             req.getRequestDispatcher("erorr.jsp").forward(req, resp);
         }
       
        
    }
    
}

