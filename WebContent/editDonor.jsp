<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-size: 19px;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

#navbar {
  overflow: hidden;
  background-color: #333;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>
</head>
<body>

<div class="header">
  <h2>ADMIN LOGIN</h2>
  <p>Welcome to Blood Doners Admin Login</p>
</div>

<div id="navbar">
  <a class="active" href="index.html">Home</a>
  <a href="Todolist.jsp">To Do List</a>
  <a href="addNewDonor.jsp">Add New Donor</a>
  <a href="viewDonor.jsp">Edit,Delete & List of Donor Details</a>
  <a href="manageStock.jsp">Manage Stock</a>
  <a href="requestForBlood.jsp">Request for Blood</a>
  <a href="requestCompleted.jsp">Request Completed</a>
  <a href="adminLogin.jsp">Logout</a>
</div>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  

<center><h2>EDIT DONOR LIST</h2> <center>
<br>
<form action="UpdateDonor.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId()%>"/>
<table border="0" width="480px" cellpadding="0"cellspacing="0" align="center">
<tr>
<td align="center">Name:</td>
<td><input type="text" name="name" value="<%=u.getName()%>"/></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">Mobilenumber:</td>
<td><input type="text" name="mobilenumber" value="<%=u.getMobilenumber() %>"/></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">Email:</td>
<td><input type="text" name="email" value="<%=u.getEmail()%>"/></td> 
</tr>
<tr><td>&nbsp;</td></tr>
 <tr>
<td align='center'>Sex:</td>
<td><select name="Sex" style="width:166px"> 
<option>Male</option>  
<option>Female</option>  
<option>Others</option>  
</select>  
</td></tr> 
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">Bloodgroup:</td>
<td><select name="bloodgroup"style="width:166px" > 
<option>A+</option>  
<option>A-</option>  
<option>B+</option>  
 <option>B-</option>  
<option>O+</option>  
<option>O-</option>  
<option>AB+</option>  
<option>AB-</option>    
</select> 
 </td></tr>
</tr>
<tr><td>&nbsp;</td></tr>  
<tr>
<td align="center">Address:</td>
<td><input type="text" name="address" value"=<%=u.getAddress()%>"/></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
<td align='center'><input type="submit" name='Save' value="Edit Donor"/></td>
</tr> 
</table>
</table>
</form>

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
//Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Declare a loop variable
var i;

// List View
function listView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "100%";
  }
}

// Grid View
function gridView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "50%";
  }
}

/* Optional: Add active class to the current button (highlight it) */
var container = document.getElementById("btnContainer");
var btns = container.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
<h3><center>All Right Reserved @ Blood Doners :: 2021 </center></h3>
</body>
</html>



