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
#mytable5 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#mytable5 td, #mytable5 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#mytable5 tr:nth-child(even){background-color: #f2f2f2;}

#mytable5 tr:hover {background-color: #ddd;}

#mytable5 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: DarkCyan;
  color: white;
}
</style>
<body onload="loadEvents()">
	<h3>Details Of Singing Forms </h3>
	 <p>Select Event: <select id="sfs2" onchange="readSingingFormsEventsById()" style="height:24px"></select> </p> 
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">
function loadEvents() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/SingingFormsEvents";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	var E = document.getElementById("sfs2");
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			for(var x in data)
			{
				var option = document.createElement("option");
				option.value = data[x].id;
				option.text = data[x].instrumentCanBeUsedForIt;
				
				
				
				
				E.add(option);
			}
		}
	};
}



function readSingingFormsEventsById() 
{
	var xhtml = new XMLHttpRequest();
	var E = document.getElementById("sfs2");
	var url = "http://localhost:8080/api/SingingFormsEventsFind/" + E.options[E.selectedIndex].value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();

	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			var table = "<table id=\"mytable5\" border=1>";
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

	/* function findAll() 
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
				var table = "<table id=\"mytable5\" border=1>";
				table += "<tr> <th>id</th> <th>nameOfRaga</th> <th>instrumentCanBeUsedForIt</th> <th>backgroundBehindItExistence</th> </tr>";
				for(var x in data)
				{
					table += "<tr> <td>"+ data[x].id +"</td> <td>"+ data[x].nameOfRaga +"</td> <td>"+ data[x].instrumentCanBeUsedForIt +"</td> <td>"+ data[x].backgroundBehindItExistence +"</td>  </tr>";
				}
				table += "</table>";
				display.innerHTML = table;
			}
		};
	}  */ 
</script>
</html>