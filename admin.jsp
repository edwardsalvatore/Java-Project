<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="admin.css">
</head>

<body>
    <div class="features-boxed">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Welcome TO Admin Page</h2>
                <p class="text-center">You have Privileges Cause you are the Admin LoL </p>
            </div>
            <div class="row justify-content-center features">
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-list-alt icon"></i>
                        <h3 class="name">Check User Logs</h3>
                        <p class="description">This will Display all User logs in this Website except admin</p>
                        <a href="readlogs"  class="learn-more">Click me!!</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-users icon"></i>
                        <h3 class="name">Bulk Users</h3>
                        <p class="description">This will allow you to push Users into the database.</p>
                        <a href="userupload.jsp" class="learn-more">Click me!!</a></div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-address-card icon"></i>
                        
                        <h3 class="name">Check User Details</h3>
                        <p class="description">This will Display all the User Details of the Users</p>
                        <a href="<%=request.getContextPath()%>/admin_userdetails" class="learn-more">Click me!!</a></div>
                </div>
                       <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-address-card icon"></i>
                        
                        <h3 class="name">Users who are authenticated</h3>
                        <p class="description">This will Display all the Userid and password of the Users</p>
                        <a href="<%=request.getContextPath()%>/usersauth" class="learn-more">Click me!!</a></div>
                </div>
<!--                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-leaf icon"></i>
                        <h3 class="name">Organic </h3>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p><a href="#" class="learn-more">Learn more ?</a></div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-plane icon"></i>
                        <h3 class="name">Fast </h3>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p><a href="#" class="learn-more">Learn more ?</a></div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-phone icon"></i>
                        <h3 class="name">Mobile-first</h3>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p><a href="#" class="learn-more">Learn more ?</a></div>
                </div>-->
            </div>
        </div>
    </div>
      
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>