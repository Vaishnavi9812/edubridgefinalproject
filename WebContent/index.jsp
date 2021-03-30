<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Blood Bank</title>
    <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
	}
  button1 {
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
button {
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


</style>
</head>

<body>
        <header class="continer-fluid ">
            <div class="header-top">
                <div class="container">
                    <div class="row col-det">
                        <div class="col-lg-6 d-none d-lg-block">
                            <ul class="ulleft">
                                <li>
                                    <i class="far fa-envelope"></i>
                                    vaishnavipalande98@gmail.com
                                    </li>
                            </ul>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <ul class="ulright">
                                <li>
                                    <a class="fas fa-user" href="adminLogin.jsp">Admin Login</a>
                                    </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <img src="assets/images/logo.jpg" alt="">
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.html">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="https://docs.google.com/forms/d/e/1FAIpQLScp1dEQ8kjonZPOk_MAXwu5ov6WdhqpTGlUrbCvQPm6lNM3Vg/viewform?usp=sf_link">Contact Us</a>
                                        </li>
                                        <li class="nav-item">
                                          <a class="nav-link" href="addNewDonor.jsp">Donate  Now</a>
                                          </li>
                                          
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div style="max-width:100%">
   <img class="mySlides"  src="blood8.jpg" width="1600"  >
    <img class="mySlides"  src="blood9.jpg" width="1600"  >
        <img class="mySlides"  src="blood66.jpg" width="1500"  >
   
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>
        
 


  <br>
  
<%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Form Submitted Successfully.</font></center>
  <%
  }
  %>
  <%
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Invalid Data Try Again!</font></center>
  <%
  }
  %>

  
 <center><h1>Enter Your Details to Request for Blood</h1></center>
 <form action="indexFormAction.jsp" method="post">
  <center>
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
  <input type="mail" name="email" placeholder="Enter Email Address" required>
  <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
 <button class="button1"><span>Submit</span></button>
  
 </form>
 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>

<h3><center>All Right Reserved @ Blood Doners :: 2021 </center></h3>

</body>
</html>

        

</body>
</html>