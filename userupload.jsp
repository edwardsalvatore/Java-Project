<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        </head>
        <style>
            
            .upload-btn-wrapper {
  position: relative;
  overflow: hidden;
  display: inline-block;
}

.btn {
  border: 2px solid gray;
  color: gray;
  background-color: white;
  padding: 8px 20px;
  border-radius: 8px;
  font-size: 20px;
  font-weight: bold;
}

.upload-btn-wrapper input[type=file] {
  font-size: 100px;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}

.cent1{
  width: 500px;
  height: 250px;
  outline: solid 1px black;
  display: flex;
  justify-content: center;
  align-items: center;
}


.login-dark {
  height:800px;
  background:#475d62 url(../../assets/img/star-sky.jpg);
  background-size:cover;
  position:relative;
}
input[type='file']{
  color:yellow;
  font-size:15px;
  border-bottom: 0px;
  
}
.login-dark form {
  max-width:320px;
  width:90%;
  background-color:#1e2833;
  padding:40px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:absolute;
  top:45%;
  left:50%;
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}

.login-dark .illustration {
  text-align:center;
  padding:15px 0 20px;
  font-size:100px;
  color:#2980ef;
}

.login-dark form .form-control {
  background:none;
  border:none;
  border-bottom:1px solid #434a52;
  border-radius:0;
  box-shadow:none;
  outline:none;
  color:inherit;
}

.login-dark form .btn-primary {
  background:#214a80;
  border:none;
  border-radius:4px;
  padding:11px;
  box-shadow:none;
  margin-top:26px;
  text-shadow:none;
  outline:none;
}

.login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
  background:#214a80;
  outline:none;
}

.login-dark form .forgot {
  display:block;
  text-align:center;
  font-size:12px;
  color:#6f7a85;
  opacity:0.9;
  text-decoration:none;
}

.login-dark form .forgot:hover, .login-dark form .forgot:active {
  opacity:1;
  text-decoration:none;
}

.login-dark form .btn-primary:active {
  transform:translateY(1px);
}

#hide_file {
    position: absolute;
    z-index: 1000;
    opacity: 0;
    cursor: pointer;
    right: 0;
    top: 0;
    height: 100%;
    font-size: 24px;
    width: 100%;
}
</style>
<body> 
  <% String message= (String)request.getAttribute("message");%>
        <div class="login-dark">
        <form   id="form_id" method="post" enctype="multipart/form-data">
            <h2 class="sr-only">Upload Only CSV file </h2>
            <div class="illustration"><iconify-icon icon="akar-icons:file"></iconify-icon></div>
            <div class="form-group"><input class="form-control" type="file" id="sam" name="fname" onchange="out()"/></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" onclick="on()" value="upload" >Upload</button>

            </div><a href="#" class="forgot">This should contain only first name and last name of the users</a></form>
               
</form>

    </div>   
        
 <script src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

              </div>
     

     </div>

    <script>
     
       function on(){
            var fu1 = document.getElementById("sam").value; 
            if(fu1==""){
                alert("plz upload a valid file");
               
            }
            else{
               document.getElementById("form_id").action="uploaduser";
                alert("User Added Successfullly");
            }
          
       }
        function out(){
            
            var fu1 = document.getElementById("sam").value; 
            if(fu1==""){
                alert("plz upload a valid file");
            }
            else{
            var ab=fu1.split("\\").pop();
             document.getElementById("samm").value = ab;
            }
          
            
         
        }

    </script>
</body> 
</html> 
