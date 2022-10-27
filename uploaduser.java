package sample;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/uploaduser")
public class uploaduser extends HttpServlet {
    @Override
      protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out = resp.getWriter();
        System.out.println(req);
        System.out.println(resp);
        MultipartRequest m = new MultipartRequest(req, "C:\\Users\\mjawaad\\Desktop\\csvfiles");        
        String message="done";
        Iterator<String> iterator = (Iterator<String>) m.getFileNames();
        Enumeration files = m.getFileNames();
        String uploadd=(String)files.nextElement();

        File filenamee=new File(m.getOriginalFileName(uploadd));
        File filenameee=filenamee;
        while(files.hasMoreElements())
        {
            String upload=(String)files.nextElement();

            File filename=new File(m.getOriginalFileName(upload));

            System.out.println(filename);
            filenamee=filename;
        }

//        req.setAttribute("message", message); 
//        String user_id = req.getParameter("user_id");
//        
//        String fileName= (String)req.getParameter("sala");
//       
//        req.setAttribute("fileName",user_id);
//        req.getRequestDispatcher("userupload.jsp").forward(req, resp);
      
  String url       = "jdbc:mysql://localhost:3306/Project_users";
        String user      = "root";
        String password  = "root";
        String a3="";
        String a4="";
        String a1="";
       Connection conn;
         try {
               Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(url, user, password);
                
                String file="C:\\Users\\mjawaad\\Desktop\\csvfiles\\"+filenamee;
                 Scanner sc = new Scanner(new File(file));  
                sc.useDelimiter(",");
                System.out.println("hey iam");
                //sets the delimiter pattern  
                while (sc.hasNext())  //returns a boolean value  
                {
                 System.out.println("hey iam here");
                 boolean cond=false; 
                 String s3="";
                 String s1=sc.next().replaceAll("\\r\\n|\\r|\\n", " ");
                 String s2=sc.next().replaceAll("\\r\\n|\\r|\\n", " ");
//                 s1=s1.replaceAll("[\\n\t ]", "");
//                 s2=s2.replaceAll("\\r\\n", "");
                    if(s1.length()>6){
                        s1=s1.substring(0,5);
                    }
                 System.out.println(s1);
                 System.out.println(s2);
                 char a2=s1.charAt(0);
                 s3=s2.charAt(0)+s1;
                 
                
                 s3=s3.replaceAll("[\\n\t ]", "");
                 System.out.print(a2);
                 int temp=9; 
                while(cond==false){
                String query2="select user_id from user_auth where user_id=?";
                    PreparedStatement ps=conn.prepareStatement(query2);
                        ps.setString(1, s3);
                        ResultSet p=ps.executeQuery();
                        if (!p.isBeforeFirst()) {    
                            cond=true;
                        }
                        else{
                           s3=s3.substring(0,s3.length()-1)+temp;
                           temp--;
                        }
                }
                String query ="insert into user_auth" +" values(?,?,?)";
                PreparedStatement ps3=conn.prepareStatement(query);
                ps3.setString(1, s3);
                
                SecureRandom random = new SecureRandom();
                final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%^&*()_+!";
                String sb=""; 
                for (int i = 0; i < 10; i++)
                {
                    int randomIndex = random.nextInt(chars.length());
                    sb=sb+chars.charAt(randomIndex);
                }
                ps3.setString(2,sb);
                ps3.setString(3, "user");
                ps3.execute();
                a1=s3;
                a3=s2;
                a4=s1;
                
      
                } 
            
            
                
              req.getRequestDispatcher("admin.jsp").forward(req, resp);  
         

 } catch (SQLException | ClassNotFoundException ex) {
             System.err.println(ex);
             req.getRequestDispatcher("erorr.jsp").forward(req, resp);
         } 
    


    } 
}

