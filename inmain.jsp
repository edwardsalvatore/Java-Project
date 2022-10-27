<%-- 
    Document   : login
    Created on : Sep 9, 2022, 12:33:21 PM
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="inmain.css">
</head>

<body>
    <% int a= (int)request.getAttribute("a");%>
    
     
    <div>
        <div class="header-dark">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="#">Martini</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                        id="navcol-1">
                        <ul class="nav navbar-nav">
                        
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form><span class="navbar-text"><a href="login.jsp" class="login">Log In</a></span><a class="btn btn-light action-button" role="button" href="signup.jsp">Sign Up</a></div>
                </div>
            </nav>
            <div class="container hero">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <h1 class="text-center">The Spirit Brand is Here</h1>
                        <div class="embed-responsive embed-responsive-16by9"><img class="embed-responsive-item" src="css/o1.jpg" style=" height: 800px;  overflow: hidden;"/></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
   <a id="tho"><% out.println(a) ;%></a>
   
   <script>
       window.onload=function out(){
           var a=document.getElementById("tho").innerHTML;
           console.log(a);
       
           if(a==1){
              alert("erorr in login sorry");
           }
          document.getElementById("tho").innerHTML=""; 
       }
   </script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

</body>

</html>
