<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select your items</title>
<script type="text/javascript">

function validate()
{
	//Front-end validation for quantity
	var msg="Please fix following error/s ",flag=0;	
		
	if(document.getElementById("soap").checked==true)
		{
		if(document.getElementById("qtySoap").value=="" || isNaN(document.getElementById("qtySoap").value))
			{
				msg=msg+"\n-enter valid quantity for soap";
				flag=1;
			}
		}
	if(document.getElementById("chocolate").checked==true)
	{
	if(document.getElementById("qtyChocolate").value==""  || isNaN(document.getElementById("qtyChocolate").value))
		{
			msg=msg+"\n-enter valid quantity for chocolate";
			flag=1;
		}
	}
	if(document.getElementById("chips").checked==true)
	{
	if(document.getElementById("qtyChips").value=="" || isNaN(document.getElementById("qtyChips").value))
		{
			msg=msg+"\n-enter valid quantity for chips";
			flag=1;
		}
	}
	if(document.getElementById("shampoo").checked==true)
	{
	if(document.getElementById("qtyShampoo").value=="" || isNaN(document.getElementById("qtyShampoo").value) )
		{
			msg=msg+"\n-enter valid quantity for shampoo";
			flag=1;
		}
	}
	if(document.getElementById("Milk").checked==true)
	{
	if(document.getElementById("qtyMilk").value=="" || isNaN(document.getElementById("qtyMilk").value))
		{
			msg=msg+"\n-enter valid quantity for Milk";
			flag=1;
		}
	}
	if(document.getElementById("soap").checked==false&&document.getElementById("chocolate").checked==false&&document.getElementById("chips").checked==false&&document.getElementById("shampoo").checked==false&&document.getElementById("Milk").checked==false)
	{msg=msg+"\n-No item selected";flag=1;}
	if(flag==0)
		document.getElementById("frm1").submit();
	else
		alert(msg);
}
/**
 * Function to clear all content
 */
function clearAll()
{
		document.getElementById("qtyShampoo").value="";
		document.getElementById("qtyChips").value="";
		document.getElementById("qtyMilk").value="";
		document.getElementById("qtyChocolate").value="";
		document.getElementById("qtySoap").value="";
		document.getElementById("Milk").checked=false;
		document.getElementById("shampoo").checked=false;
		document.getElementById("chips").checked=false;
		document.getElementById("soap").checked=false;
		document.getElementById("chocolate").checked=false;
}
</script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include><br>
<form id="frm1" action="calBill" method="post">
<center>
<table border="1px" cellpadding="2">
<tr>	<td>Item</td>
		<td>Quantity</td>
</tr>
<tr><td><input type="checkbox" value="soap" name="soap" id="soap"/> Soap </td>
	<td>	<input type="text" name="qtySoap" id="qtySoap">	</td>
</tr>
<tr><td><input type="checkbox" value="chocolate" name="chocolate" id="chocolate"/> Cadburry Chocolate </td>
	<td>	<input type="text" name="qtyChocolate" id="qtyChocolate">	</td>
</tr>
<tr><td><input type="checkbox" value="chips" name="chips" id="chips"/> Chips </td>
	<td>	<input type="text" name="qtyChips" id="qtyChips">	</td>
</tr>
<tr><td><input type="checkbox" value="shampoo" name="shampoo" id="shampoo"/> Shampoo </td>
	<td>	<input type="text" name="qtyShampoo" id="qtyShampoo">	</td>
</tr>
<tr><td><input type="checkbox" value="Milk" name="Milk" id="Milk"/> Highland Milk Powder </td>
	<td>	<input type="text" name="qtyMilk" id="qtyMilk">	</td>
</tr>


</table>
<br>
<input type="button" value="Calculate" onclick="validate()"/> 
<input type="button" value="Clear All" onclick="clearAll()"/> 
</center>

</form>
<br>
<jsp:include page="Footer.jsp"></jsp:include><br>

</body>
</html>