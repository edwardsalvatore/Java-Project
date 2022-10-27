<%-- 
    Document   : signup
    Created on : Sep 9, 2022, 4:45:32 PM
    Author     : mjawaad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html CodeXHTML
<!DOCTYPE html>
<!-- Designined by CodingLab - Update by Fantacy Design -->
<html lang="en" dir="ltr">
   
  <head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="signup.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
        <form id="form_id" method="Post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="first_name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="last_name"  placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details">Age</span>
            <input type="number" name = "age" placeholder="Enter your Age" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="number" name = "phone_number" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" id="p1" name="user_password" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" id="p2" placeholder="Confirm your password" required>
          </div>
        </div>
          <div class="button">
           
              <input type="submit" value="Register" onclick="teststr()">
        </div>

      </form>
    </div>
  </div>
 
</body>
    <script type="text/javascript">
        function teststr() {
            var res="false";
            var str = document.getElementById("p1").value;
            if (str.match(/[a-z]/g) && str.match(
                    /[A-Z]/g) && str.match(
                    /[0-9]/g) && str.match(
                    /[^a-zA-Z\d]/g) && str.length >= 8 && str===document.getElementById("p2").value){
                  document.getElementById("form_id").action="getSer";
                    res = "TRUE";
                    }
              
            else{
              alert("Password didnt match check");   
            }
        console.log(res);
        }
    </script>
</html>
