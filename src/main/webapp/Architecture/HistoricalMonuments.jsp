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
#mytable2 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#mytable2 td, #mytable2 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#mytable2 tr:nth-child(even){background-color: #f2f2f2;}

#mytable2 tr:hover {background-color: #ddd;}

#mytable2 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: Coral;
  color: white;
}
</style>
<body onload="findAll()">
	<h3>Details of Historical Monuments </h3>
	<!-- <p>Select Event: <select id="Culture" onchange="findAll()" style="height:24px"></select> </p> -->
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">
	
	function findAll() 
	{
	    var xhtml = new XMLHttpRequest();
		<!-- var E = document.getElementById("id"); -->
		var url = "http://localhost:8080/api/HistoricalMonuments/" ;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();

		var display = document.getElementById("display"); 

		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				var table = "<table id= \"mytable2\" border=1>";
				table += "<tr> <th>year</th> <th>hname</th> <th>place</th> <th>establishedBy</th> <th>best</th>  </tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].year +"</td> <td>"+ data[x].hname +"</td> <td>"+ data[x].place +"</td> <td>"+ data[x].establishedBy +"</td> <td>"+ data[x].best +"</td>  </tr>";
				}
				table += "</table>";
				display.innerHTML = table;
			}
		};
	} 
</script>
</html>