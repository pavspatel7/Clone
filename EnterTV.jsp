<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Me</title>
</head>
<style>
	body
	{
		background-color:  #e6f3ff; 
		
	}
</style>

<body>
<form action = "StoreAuction" method = "Post">
	
		<h2 style = "font-family: monospace"> Enter information about your TV/s.</h2>
		
		<h3 style = "font-family: monospace">Brand: </h3>
		<input type = "text" placeholder = "Brand Name" name = "Brand" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Model: </h3>
		<input type = "text" placeholder = "Model Name" name = "Model" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Color: </h3>
		<input type = "text" placeholder = "Color" name = "Color" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Screen size: </h3>
		<input type = "text" placeholder = "Screen size" name = "ScreenSize" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Screen Type: </h3>
		<input type = "text" placeholder = "Screen type" name = "ScreenType" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Resolution: </h3>
		<input type = "text" placeholder = "Resolution" name = "Resolution" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Audio/Video inputs: </h3>
		<input type = "text" placeholder = "Audio/Video Inputs" name = "AVinputs" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Condition: </h3>
		<input type = "text" placeholder = "Condition" name = "Condition" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Quantity: </h3>
		<input type = "number" placeholder = "Quantity" name = "Quantity" style = "height:30px; width:300px; font-family: monospace; border-radius: 5px">
		
		<h3 style = "font-family: monospace" >Description: </h3>
		<textarea rows = "5" cols = "60" placeholder = "Description" name = "Description" style = "height:70px; width:300px; font-family: monospace; border-radius: 5px"> </textarea> <br>
		
		<input type = "submit" Value = "Next" name = "auction3" style = "height:30px; width:100px; font-family: monospace; border-radius: 5px">
		

	</form>
</body>
</html>