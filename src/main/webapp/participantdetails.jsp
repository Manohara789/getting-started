<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>	Registered Participants </title>
</head>
<style>
#mytable {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#mytable td, #mytable th {
  border: 1px solid Aqua;
  padding: 8px;
}

#mytable tr:nth-child(even){background-color: #f2f2f2;}

#mytable tr:hover {background-color: #ddd;}

#mytable th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: 	Orange;
  color: white;
}
</style>
<body onload="loadEvents()">
	<h3>The Information of Customers </h3>
	<p>Select Event: <select id="events" onchange="readParticipants()" style="height:24px"></select> </p>
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">
	function loadEvents() 
	{
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/events";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		var E = document.getElementById("events");
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					var option = document.createElement("option");
					option.value = data[x].id;
					option.text = data[x].modulename;
					E.add(option);
				}
			}
		};
	}
	function readParticipants() 
	{
		var xhtml = new XMLHttpRequest();
		var E = document.getElementById("events");
		var url = "http://localhost:8080/api/participants/" + E.options[E.selectedIndex].value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();

		var display = document.getElementById("display");

		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				var table = "<table id=\"mytable\" border=1>";
				table += "<tr> <th>PID</th> <th>Participants Name</th> <th>Email ID</th> <th>USERNAME </th> <th>PASSWORD</th> <th>CONFIRM_PASSWORD</th> <th>Ph.No.</th> </tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].id +"</td> <td>"+ data[x].name +"</td>   <td>"+ data[x].emailid +"</td>  <td>"+ data[x].username +"</td> <td>"+ data[x].password +"</td> <td>"+ data[x].confirm_password +"</td> <td>"+ data[x].phno +"</td>  </tr>";
				}
				table += "</table>";
				display.innerHTML = table;
			}
		};
	}
</script>
</html>