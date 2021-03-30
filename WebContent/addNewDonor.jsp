<%@page import="com.javatpoint.dao.UserDao"%>  
<%@page import="com.javatpoint.bean.User"%>  
<%@page import="Project.ConnectionProvider"%> 
<%@page import="java.sql.Connection"%>  
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
                                          <a class="nav-link" href="addNewDonor.jsp">Donate Now</a>
                                          </li>
                                         <li class="nav-item">
                                          <a class="nav-link" href="index.jsp">Blood Request</a>
                                          </li> 
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <br>
<center><h2>ADD NEW DONOR</h2> <center>
<br>
<form action="addNewAction.jsp" method="post">
<center><table border="0" width='480px' cellpadding="0" cellspacing="0" align="center">
<tr>
<td align="center">Name:</td>
<td><input type="text" name="name"></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<tr>
<td align="center">Mobilenumber:</td>
<td><input type="text" name="mobilenumber"></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">Email:</td>
<td><input type='text' name='email'></td> 
</tr>
<tr><td>&nbsp;</td></tr>
 <tr>
<td align="center">Sex:</td>
<td><select name="sex" style="width:166px"> 
<option>Male</option>  
<option>Female</option>  
<option>Others</option>  
</select>  
</td></tr> 
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">Bloodgroup:</td>
<td><select name="bloodgroup" style="width:166px"> 
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
<tr><td>&nbsp;</td></tr>  
<tr>
<td align='center'>Address:</td>
<td><input type='text' name='address'></td> 
</tr>
<tr><td>&nbsp;</td></tr>
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
<td align="center"><input type="submit" name="Save" value="Add Donor"/></td>
</tr> 
</table>
</table>
</center>
</form>
<br>
<h3><center>All Right Reserved @ Blood Bank :: 2021 </center></h3>
        
        
        
        </body>
        </html>