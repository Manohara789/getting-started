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
#mytable8 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#mytable8 td, #mytable8 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#mytable8 tr:nth-child(even){background-color: #f2f2f2;}

#mytable8 tr:hover {background-color: #ddd;}

#mytable8 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: Coral;
  color: white;
}
</style>
<body onload="findAll()">
	<h3>Famous Foods In  India </h3>
	<!-- <p>Select Event: <select id="Culture" onchange="findAll()" style="height:24px"></select> </p> -->
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">
	
	function findAll() 
	{
	    var xhtml = new XMLHttpRequest();
		<!-- var E = document.getElementById("id"); -->
		var url = "http://localhost:8080/api/Types_Of_Cuisines/" ;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();

		var display = document.getElementById("display"); 

		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				var table = "<table id= \"mytable8\" border=1>";
				table += "<tr> <th>tcus_id</th> <th>tcusname</th> <th>tcus_exixstence</th>   </tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].tcus_id +"</td> <td>"+ data[x].tcusname +"</td> <td>"+ data[x].tcus_exixstence +"</td>   </tr>";
				}
				table += "</table>";
				display.innerHTML = table;
			}
		};
	} 
</script>
</html>