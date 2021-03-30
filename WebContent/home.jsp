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
<h1 style="text-align: center;">Search Box For Admin Help</h1>
        <script async src="https://cse.google.com/cse.js?cx=007019498718139788174:amtiepdpgeg">
        </script>
        <div class="gcse-search"></div>
        <h2>Every day roles For Admin</h2>

<p>Click on a button to choose list view or grid view.</p>

<div id="btnContainer">
  <button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
  <button class="btn active" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button>
</div>
<br>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Task 1</h2>
    <p>Maintain the proper record of donors.</p>
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Task 2</h2>
    <p>Update in the database blood units of new donors.</p>
  </div>
</div>

<div class="row">
  <div class="column" style="background-color:#ccc;">
    <h2>Task 3</h2>
    <p>Take review of system three times in week.</p>
  </div>
  <div class="column" style="background-color:#ddd;">
    <h2>Task 4</h2>
    <p>If any problem takes place then update to IT support team.</p>
  </div>
     <br>  
     <br>
<div class="content">
<br>
 <h1 style="text-align: center;">Roles and Roles and  Responsibilities For Admin</h1>
  <br>
  <h4>User Adminstration</h4>
  <p>1.The primary responsibility of a sysadmin is to support reliable and effective use of complex IT systems by end users, whether internal employees or external customers. </p>
  <p>2.Activities range from managing identities and access to providing dedicated technical support to individual users.</p>
   <h4>System maintenance</h4>
  <p>1.Sysadmins are responsible for dependable access and availability to IT systems.</p>
  <p>2.Sysadmins are therefore required to troubleshoot and fix issues that compromise system performance or access to an IT service.</p>
  <h4>Documentation</h4>
  <p>Sysadmins are required to maintain records of IT assets usage.  To plan for future IT investments and upgrades, you will document:</p>
  <p>*End-user requests</p>
  <p>*Business requirements</p>
  <p>*IT issues</p>
  <h4>System health monitoring</h4>
  <p>Sysadmins should monitor system health and identify anomalous network behavior, which may include security-sensitive activities such as unauthorized network access and data transfer.</p>
<h4>Installation & patching</h4>
<p>1.Sysadmins are responsible for managing, troubleshooting, licensing, and updating hardware and software assets.</p>
<p>2.You will ensure that appropriate measures are proactively followed in response to unforeseen issues such as IT downtime or zero-day exploits. <p>
</div>

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
