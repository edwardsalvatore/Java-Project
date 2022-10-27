<%-- 
    Document   : lol
    Created on : Sep 8, 2022, 5:40:12 PM
    Author     : mjawaad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="log.css">
</head>

<body>
    <div class="register-photo">
        <div class="form-container">
            <div class="image-holder"></div>
            
           
            <form id="form_id" method="post">
                 
                <h2 class="text-center"><strong>Create</strong> an account.</h2>
                <div class="form-group"><input class="form-control" id="cek1" type="text" name="user_id" placeholder="User ID"></div>
                <div class="form-group"><input class="form-control" type="password" id="cek2" name="user_password" placeholder="Password"></div>
<!--                <div class="form-group"><input class="form-control" type="password" name="password-repeat" placeholder="Password (repeat)"></div>-->
             
<div class="form-group"><button class="btn btn-primary btn-block"  onclick="check()" type="submit">Sign Up</button></div></form>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
<script>
    function check(){
       
            var fu1 = document.getElementById("cek1").value; 
            var fu2 = document.getElementById("cek2").value;
            if(fu1==""){
                alert("plz fill the userid");    
            }
            else if(fu2==""){
                alert("plz fill the password"); 
            }
            else{
               document.getElementById("form_id").action="auth";
               
            }
    }
</script>
</html>

