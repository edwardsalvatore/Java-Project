<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>
   <%ArrayList<String> userid=new ArrayList<>();%>
   <%ArrayList<String> password=new ArrayList<>();%>

      <% userid= (ArrayList<String>) request.getAttribute("list1"); %>
   <% password= (ArrayList<String>) request.getAttribute("list2"); %>


   <head></head>
   <style>

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: white;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.users th h1 {
    font-weight: bold;
    font-size: 1em;
  text-align: left;
  color: #185875;
}

.users td {
    font-weight: normal;
    font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
     -moz-box-shadow: 0 2px 2px -2px #0E1119;
          box-shadow: 0 2px 2px -2px #0E1119;
}

.users {
    text-align: left;
    overflow: hidden;
    width: 80%;
    margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.users td, .users th {
    padding-bottom: 2%;
    padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.users tr:nth-child(odd) {
    background-color: #323C50;
}

/* Background-color of the even rows */
.users tr:nth-child(even) {
    background-color: #2C3446;
}

.users th {
    background-color: #1F2739;
}

.users td:first-child { color: #FB667A; }

.users tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
     -moz-box-shadow: 0 6px 6px -6px #0E1119;
          box-shadow: 0 6px 6px -6px #0E1119;
}

.users td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
    transition-duration: 0.4s;
    transition-property: all;
  transition-timing-function: line;
}
.button {
  margin-left: 76.5%;
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}


.button1:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  background-color: black;
  color: white;
}
@media (max-width: 800px) {
.users td:nth-child(4),
.users th:nth-child(4) { display: none; }
}
</style>
   </style>
   <body>
<h1>These are the details</h1>
  <button onclick="exportTableToExcel('tblData')" class="button button1">Export Table Data To Excel File</button>
<table class="users" id="tblData">
    <thead>
           <tr>
    <th>UserId</th>
    <th>Login Time</th>
    

  </tr>
    </thead>
<% for(int i=0;i<userid.size();i++){
%>
<tr>
    <td><%out.println((String)userid.get(i)); %></td>
    <td><%out.println((String)password.get(i)); %></td>


</tr>
<%}%>
</table>
   </body>
 <script type="text/javascript">
  window.onload =function handleClick()
  {  
      var j=1;
      while(j<3){       
          document.getElementById("sam"+j).innerHTML="hey";
          j=j+1;
      }
  };
  function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'excel_data.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}
</script>
              
</html>


