<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<title>Indian Culture Information System</title>
</head>
<style>

Body {
  
 background-repeat: no-repeat;
 background-attachment: fixed;
  background-position: center;
   background-size: cover;
 background-color: white ; 
 text-align :center;
}
button { 
        
       width: 30%;
        color: orange; 
        padding: 7px; 
        margin: 7px 3px; 
        border: none; 
        cursor: pointer;
        background-color:yellow; 
         } 
 
 input[type=text] { 
        width: 30%; 
        margin: 3px 0;
        padding: 3px 2px; 
        display: inline-block; 
        border: 2px solid green; 
        box-sizing: border-box; 
      align: center;
    }
 button:hover { 
        opacity: 0.7; 
    } 
 
      
   
 .container { 
        padding: 25px; 
        
    } 
	#id1
{
margin: 0 auto;
color: black;
border: solid 1px black;
width: 30%;
text-align: center;

}


</style>
<body onload="login()">


	<h3>Login to The Site </h3>
  
  
	 <table style="width:100%" >
		<tr>
		 
			<td style="width:100px" >username</td><td> <input type="text" id="t1" placeholder="username" required/><br> <br> </td>
		</tr> 
		
		 <tr>
			<td>password</td><td> <input type="text" id="t2" placeholder="password" required/>	<br> <br> </td> 
		</tr>
		
		
		
		<tr>
			<td></td><td> <button  onclick="login()">Login</button> </td>
		
		</tr>
		<tr>
			<td></td><td> <label id="lbl"></label> </td>
		
		</tr>
	</table> 
	


</body>


<!--   <script type="text/javascript">
	
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
	    -->
	    <script>
	
	function login() 
	{
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/Login";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("t2");
		
		
		xhtml.send(JSON.stringify({
			username : t1.value,
			password : t2.value,
			
		}));
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var lbl = document.getElementById("lbl");
				lbl.innerText = this.responseText;
				return "login successfull"
				
			}
		};
	}
	

	
</script>

</html>  --%>
