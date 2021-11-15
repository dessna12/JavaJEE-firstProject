<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ma belle page web</title>
</head>
<body>

<p> 
	<% 
	String heure = (String) request.getAttribute("heure");
	String texte="Coucou c'est moi";
	if (heure.equals("jour")){
		out.println("Bonjour ! <br />");
	}else{
		out.println("Bonsoir ! <br />");
	}
	
	
	for (int i=0;i<10;i++){
		out.println("me revoici <br />");	
	}
	%>


<%@ include file="menu.jsp" %>


</p>
</body>
</html>