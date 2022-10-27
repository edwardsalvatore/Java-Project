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

<style>


.dropdown {
  position:relative;
  
  display: inline-block;
  z-index: 1;
}

.dropdown-content {
  display: none;
  position: absolute;
  
  color:white;
  min-width: 160px;
  background-color: transparent;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  background-color: transparent;
}

.dropdown-content a:hover {background-color: transparent; font-size: 25px;}

.dropdown:hover .dropdown-content {
  display: block;
 
}



</style>
<body>
  
    <div>
        <div class="header-dark">
 <div class="header-dark">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="#">Martini</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                        id="navcol-1">
                
                        
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form>
                    </div>
                   <span ></span><a> </a><span></span>  
                        <br>
                        <span></span><span></span>
                </div>
            </nav>
             <ul class="nav navbar-nav">
                           
                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" style="color:white;padding-left: 20px;">User Details </a>
                                 <div class="dropdown">
                                     <div class="dropdown-content">
                                    <a class="dropdown-item" role="presentation">UserID   : <%=request.getParameter("user_id")%></a>
                                    <a class="dropdown-item" role="presentation" >Name    : <%=request.getAttribute("last_name")%></a>
                                    <a class="dropdown-item" role="presentation" >Age     : <%=request.getAttribute("age")%></a>
                                    <a class="dropdown-item" role="presentation" >Contact : <%=request.getAttribute("phone")%></a>
                                     </div>
                            </div>
                                 </li>
                        </ul>
            <div class="container hero">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <h1 class="text-center">The Spirit Brand is Here</h1>
                        <div class="embed-responsive embed-responsive-16by9"><img class="embed-responsive-item" src="css/o2.jpg" style=" height: 800px;  overflow: hidden;"/></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="drinks.jsp"/>

   <jsp:include page="footer.jsp" />
             <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

</body>

</html>
