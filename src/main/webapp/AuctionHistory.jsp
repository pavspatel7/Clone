<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import = "java.io.*, java.util.*, java.sql.*" %>
<%@ page import = "javax.servlet.http.*, javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<style>
	body {background-color: powderblue;}
	.table-style, th, td, tr
	{
		border: 1px solid black;
  		border-collapse: collapse;
  		padding: 20px;
  		margin-left: auto;
		margin-right: auto;
	}
</style>
<meta charset="ISO-8859-1">
<title>BuyMe: Auction History</title>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="Home.jsp">BuyMe: Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link" href="">ABC</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">DEF</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">XYZ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Logout.jsp">LogOut</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<br><br><br>

<form action = "BidHistory.jsp">
		<p class="text-center">
			<span style="font-size: 20px">Please enter the Auction Number that you want to see the bid history for:</span><br>
			<input type="text" name="pinput" placeholder="Enter Auction Number"><br>
			<input type="Submit" name="asubmit" value="View Bid History?">
		</p>
</form>


<table class="table-style">
			<tr>
				<th>
					<%out.print("Auction Number"); %>
				</th>
				<th>
					<%out.print("Product Description"); %>
				</th>
				<th>
					<%out.print("Status"); %>
				</th>
			</tr>
<%
try
{
	SqlConnection2 db = new SqlConnection2();
	Connection con = db.getConnection();
	Statement stmt1 = con.createStatement();
	HttpSession sess = request.getSession(false);
	String name = (String)sess.getAttribute("user");
	String query = "SELECT * FROM clone.Product p JOIN clone.product_for_auction pfa ON p.Pid=pfa.Pid JOIN clone.Auctions a ON a.Auction_Num=pfa.Auction_Num WHERE a.User_Name='"+name+"'";
	ResultSet rs = stmt1.executeQuery(query);
	String flag = "";
	while(rs.next())
	{
		if(rs.getInt("Active") == 1)
		{
			flag = "This auction is active. It ends on " + rs.getString("End_Date_Time");
		}
		else
		{
			flag = "The auction has ended. The winner is " + rs.getString("Winner");
		}
%>
			<tr>
				<th><%out.println(rs.getInt("Auction_Num")); %></th>
				<th><%out.println(rs.getString("Description")); %></th>
				<th><%out.println(flag); %></th>
			</tr>
<%
	}
	
	
	rs.close();
	stmt1.close();
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table><br><br>
</body>
</html>