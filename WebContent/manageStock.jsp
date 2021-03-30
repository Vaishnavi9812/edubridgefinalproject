<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
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
  
  
  input[type="text"], input[type="password"], input[type="submit"],select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  width: 55%;
  border-collapse: collapse;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding:8px;

}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

.button {
  border-radius: 4px;
  background-color: black;
  border: solid;
  color: #FFFFFF;
  text-align: center;
  font-size: 23px;
  padding: 5px;
  width: 120px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button1 {
  border-radius: 4px;
  background-color: black;
  border: solid;
  border-radius:30px;
  border-color:silver;
  color: #FFFFFF;
  text-align: center;
  font-size: 23px;
  padding: 5px;
  width: 140px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  float:right;
}

button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

button span:after ,button1 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

button:hover span , button1:hover span {
  padding-right: 25px;
}

button:hover span:after , button1:hover span:after {
  opacity: 1;
  right: 0;
}
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

<div class="container">
<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something Went Wrong! Try Again!</font></center>
<%}%>
<%
if("valid".equals(msg))
{
	%>
<center><font color="red" size="5">Successfully Updated</font>
<%}%>
<form action="manageStockAction.jsp" method="post">
<div class="form-group">
<center><h2>Select Blood Group</h2></center>
<select name="bloodgroup">
<option name="A+">A+</option>
<option name="A-">A-</option>
<option name="B+">B+</option>
<option name="B-">B-</option>
<option name="O+">O+</option>
<option name="O-">O-</option>
<option name="AB+">AB+</option>
<option name="AB-">AB-</option>
</select>

<center><h2>Select Increase/Decrease</h2></center>
<select name="incdec">
<option name="inc">Increase</option>
<option name="dec">Decrease</option>
</select>
<center><h2>Units</h2></center>
<input type="text" placeholder="Enter Units" name="units">
<center><button type="submit" class="button">Save</button></center>
</div>
</form>
<br>
<center> 
<table id="customers">
<tr>
<th>BloodGroup</th>
<th>Units</th>
</tr>
<tr>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from stock");
	while(rs.next())
	{
%>
	<td><%=rs.getString(1) %>
	<td><%=rs.getString(2) %>
	</tr>
	<% 
	}
}
catch(Exception e)
{
	System.out.println(e);
}
	%>
<table>
</center>
<br>
<br>
<br>
<br>

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
