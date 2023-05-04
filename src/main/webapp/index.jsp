<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Indian Culture Information System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>

.container {
  position: relative;
  width: 100%;
  height:20%;
}
.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: GoldenRod;
  overflow: hidden;
  width: 100%;
  height: 0;
  transition: .5s ease;
}



.container:hover .overlay {
  height: 100%;
}

.dropbtn {
  background-color: GoldenRod;
  color: blue;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: Gold;
}

button{
display: inline-block;
border-radius: 4px;
border:none;
background-color: GoldenRod;
text-align: center;
border-radius:10%;
height:40px;
width:170px;

}
.button1{
margin-left:30px;
margin-right:10px;
color:white;
}
.button2{
margin-left:30px;
margin-right:10px;

color:white;
}
.button3{
margin-left:30px;
margin-right:10px;
color:white;
}
.button4{
margin-left:30px;
margin-right:10px;

color:white;
}
.button5{
margin-left:30px;
margin-right:10px;
text-align:center;
color:white;
}
.button6{
margin-left:30px;
margin-right:10px;
background-color: pink;

}
body{
text-align:center;
}
*{
align-items:center;

}
body{
background-image:giphy.gif;
background-color:black;
background-size: 1400px 700px;
background-repeat:no-repeat;

}

</style>
<body>


	<h2> </h2> 
	
	 <button class="button1">  <span> <a href="registration.jsp" ><b>Registration</b></a> &nbsp;&nbsp;&nbsp; </span> </button>
	 <button class = "button2">  <a href="participantdetails.jsp"><b>Entries_Info</b></a> &nbsp;&nbsp;&nbsp; </button>
	  <button class="button3">    <a href="Culture.jsp"><b>Cultures</b> </a> &nbsp;&nbsp;&nbsp; </button> 
	 <button class = "button4">  <a href="Architectures.jsp"> <b>Architectures</b></a> &nbsp;&nbsp;&nbsp;  </button> 
	 <button class="button5">  <a href="CivilizedCommunication.jsp"> <b>civilizedc</b></a> &nbsp;&nbsp;&nbsp;  </button> 
	
	 <div class="dropdown">
  <button class="dropbtn">Arts</button>
  <div class="dropdown-content">
     <a href="Arts/DanceForms.jsp"> DanceForms </a>
	 <a href="Arts/SigningFormsWithoutFilter.jsp"> SingingForms</a>
	 <a href="Arts/PaintingForms.jsp"> PaintingForms</a>
	 <a href="Arts/Silpakala.jsp"> Silpakala</a>
  </div>
</div>
	


<div class="w3-black" id="tour">
    <h2 class="w3-wide w3-center">Indian Culture Information System</h2>
     <!--  <p class="w3-opacity w3-center"><i>fascinating Indian Culture, Traditions and customs.</i></p><br>
	 <p class="w3-opacity w3-center">The eternal india,a website that provides the information of our holy country</p> <br> -->

      
  
<div class="w3-row-padding w3-padding-16 w3-center" id="tour">
    <div class="w3-quarter">
    <div class="container">
      <img src="images/culture.jpeg" alt="Cultures" style="width:65% ; height:50%">
      <div class="overlay">
   <img src="images/culturee.jpg" alt="Cultures" style="width:65% ; height:50%" >
   <div class="text"> India is scientific, multi religious customs and traditions defines its culture 
     <p>Motto of India-UNITY IN DIVERSITY </div>
  </div>
      </div>
        <h3>Cultures</h3>
	  <!-- <p>Orthopaedic surgeons specialise in surgical treatments for problems caused by disease and injury (trauma) in the bones, joints and other structures involved in making the body move.</p>-->
	   <!-- <p><button class="w3-button w3-light-grey w3-block"  onclick="myFunctions()">Doctors</button></p> -->
     <a href="frontendCulture.jsp" class="w3-button w3-light-grey w3-block">Cultures</a>
    </div>
	
	
	
	
	
	<div class="w3-quarter">
	 <div class="container">
      <img src="images/archs.jpg" alt="Cultures" style="width: 62% ; height:50% ">
      <div class="overlay" >
      <img src="images/archs2.jpg" alt="Cultures" style="width:63% ; height:50%" >
    <div class="text"> Indian architecture is rooted in its history, culture and religion. 
   <p> Among a number of architectural styles and traditions, the best-known include the many varieties of Hindu temple architecture, Indo-Islamic architecture, especially Mughal architecture, Rajput architecture and Indo-Saracenic architecture.</p> 
   <p> Much early Indian architecture was in wood, which has not survived.</p></div>
    
  </div>
  </div> 
  <h3>Architectures</h3>
  <a href="frontendArchitecture.jsp" class="w3-button w3-light-grey w3-block">Architectures</a>
    </div>
    
    
    
    
    

	<div class="w3-quarter">
	 <div class="container">
      <img src="images/cc2.jpg" alt="Cultures" style="width:71% ; height:20%">
       <div class="overlay">
        <img src="images/cico.jpg" alt="Cultures" style="width:90% ; height:20%">
    <div class="text"><p>The emphasis is to view Indian society as a traditional society, which is experiencing processes, such as modernisation that illustrate cultural, social and historical principles</p></div>
  </div>
  </div>
        <h3>Civilized_Communication</h3>
     <a href="CivilizedCommunication.jsp" class="w3-button w3-light-grey w3-block">Civilized_Communication</a>
    </div>
    
    
    
    
    
    
	<div class="w3-quarter">
	<div class="container">
      <img src="images/arts.jpg" alt="Cultures" style="width:72% ; height:30%" >
      <div class="overlay">
      <img src="images/arts2.jpg" alt="Cultures" style="width:75% ; height:70%" >
    <div class="text">Indian art is a term used in art history to group and study the different artistic expressions created in the historical regions of the Indian subcontinent,including modern-day India.
    <p>It covers several art forms, historical periods, and influences.</p></div>
  </div>
  </div>
        <h3>Arts</h3> 
     <a href="Arts.jsp" class="w3-button w3-light-grey w3-block">Arts</a>
    </div>
   </div>
  </div>


</body>
</html>