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
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
  <center><h1>Donor List</h1> <center>
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  

<tr><th>Id</th><th>Name</th><th>Mobilenumber</th><th>Email</th>  
<th>Sex</th><th>Bloodgroup</th><th>Address</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getMobilenumber()}</td>  
<td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getBloodgroup()}</td><td>${u.getAddress()}</td>  
<td><a href="editDonor.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteDonor.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addNewDonor.jsp">Add New Donor</a>  
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