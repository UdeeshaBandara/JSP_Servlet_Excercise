<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Bill</title>
<jsp:include page="Header.jsp"></jsp:include>
<script type="text/javascript">


</script>
</head>
<body>

<h2><center>Bill</center></h2>

<br>
<center>
<table border="1px" cellpadding="10">
<tr>
<td> Item </td>
<td> Quantity </td>
<td> Total(Rs.) </td>
</tr>
<% if(session.getAttribute("qtySoap")!=null)  
	{
	out.print("<tr> <td> Soap </td> <td> "+session.getAttribute("qtySoap")+" </td> <td> "+session.getAttribute("SoapPrice")+" </td></tr>");	
	}
if(session.getAttribute("qtyChocolate")!=null)  
{
out.print("<tr> <td> Cadburry Chocolate </td> <td> "+session.getAttribute("qtyChocolate")+" </td> <td> "+session.getAttribute("chocolatePrice")+" </td></tr>");	
}
if(session.getAttribute("qtyChips")!=null)  
{
out.print("<tr> <td> Chips </td> <td> "+session.getAttribute("qtyChips")+" </td> <td> "+session.getAttribute("chipsPrice")+" </td></tr>");	
}
if(session.getAttribute("qtyShampoo")!=null)  
{
out.print("<tr> <td> Shampoo </td> <td> "+session.getAttribute("qtyShampoo")+" </td> <td> "+session.getAttribute("shampooPrice")+" </td></tr>");	
}
if(session.getAttribute("qtyMilk")!=null)  
{
out.print("<tr> <td> Highland Milk Powder </td> <td> "+session.getAttribute("qtyMilk")+" </td> <td> "+session.getAttribute("MilkPrice")+" </td></tr>");	
}


%>

</table>
</center>
<br><br>
<center><b><%= "Total Bill value (Rs.): "+session.getAttribute("Total") %></b></center>

<br>
<jsp:include page="Footer.jsp"></jsp:include><br>
</body>
</html>