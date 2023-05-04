

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<title>Variations In Culture</title>
</head>
<style>
body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  width:  0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: 	GoldenRod;
  overflow-x: hidden;
  transition: 0.77s;
  padding-top: 190px;
  
}

.sidenav a {
  padding: 8px 8px 8px 2px;
  text-decoration: none;
  font-size: 25px;
  color: black;
  display: block;
  transition: 0.3s;
  background-color:GoldenRed;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>
	<h2>Modules Of Culture</h2>
	
	<!-- <p>6) <a href="Arts.jsp"> Arts</a></p> -->
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Culture/EpicsList.jsp">Epics</a>
  <a href="Culture/Festivals.jsp">Festivals</a>
  <a href="Culture/Dressing_Styles.jsp">Dressing_Styles </a>
  <a href="Culture/Variations_Greetings.jsp"> Varieties_Of_Greeting_Cultures</a>
  <a href="Culture/Types_Of_Cuisines.jsp"> Indian_Cuisines_Based_on_Areas</a>
</div>

<div id="main">
<!--   <h2>Hello</h2> -->
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; **** Open More  ****</span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
  
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script> 

</body>
</html>
  

  
  
  
  