<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ma page d'accueil</title>
</head>
<body>

<%
	String name = (String) request.getAttribute("name");
%>

<p> Bienvenue � ${ !empty name ? name : '' } </p>
<p> ${ noms[0] } </p>

<p> Bonjour ${ auteur.prenom } ${ auteur.nom } </p>
<p> ${ !auteur.actif ? "Vous n'�tes pas tr�s actifs" : "Vous �tes actif" } </p>


/ ajout d'un header et d'un lien vers autre jsp

<%@ include file="menu.jsp" %>

</body>	
</html>