<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>	Registered Participants </title>
</head>
<style>
#mytable10 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#mytable10 td, #mytable4 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#mytable10 tr:nth-child(even){background-color: #f2f2f2;}

#mytable10 tr:hover {background-color: #ddd;}

#mytable10 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: PaleVioletRed;
  color: white;
  
button{
display: inline-block;
border-radius: 4px;
border:none;
background-color: PaleVioletRed;
text-align: center;
border-radius:10%;
height:40px;
width:170px;

}
.button1{
margin-left:30px;
margin-right:10px;

}

.button2{
margin-left:30px;
margin-right:10px;

}

.button3{
margin-left:30px;
margin-right:10px;

}

}
</style>

<body onload="findAll()">
	<h3>Singing Forms Of India </h3>
	<button class="button1" > <a href="SingingFormsFilter1.jsp" > SingingForms With Clear NameofRaga </a> </button>
   <button class="button2" > <a href="SingingFormsFlter2.jsp" > SingingForms With Clear Background_Behind_Its_Exixstence </a> </button>
   <button class="button3" > <a href ="SingingFormsFlter3.jsp" > SingingForms With Clear instrument_can_be_used_for_it </a> </button>
	<!-- <p>Select Event: <select id="Culture" onchange="findAll()" style="height:24px"></select> </p> -->
	<div id="display" style="width:100%"></div>

</body>
<script type="text/javascript">
	
	function findAll() 
	{
	    var xhtml = new XMLHttpRequest();
		<!-- var E = document.getElementById("id"); -->
		var url = "http://localhost:8080/api/SingingForms/" ;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();

		var display = document.getElementById("display"); 

		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				var table = "<table id=\"mytable10\" border=1>";
				table += "<tr> <th>id</th> <th>nameOfRaga</th> <th>instrumentCanBeUsedForIt</th> <th>backgroundBehindItExistence</th> </tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].id +"</td> <td>"+ data[x].nameOfRaga +"</td> <td>"+ data[x].instrumentCanBeUsedForIt +"</td> <td>"+ data[x].backgroundBehindItExistence +"</td>  </tr>";
				}
				table += "</table>";
				display.innerHTML = table;
			}
		};
	} 
</script>

</html>