  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ma belle page web</title>
</head>
<body>

<p> 

<!-- ajout d'un header et d'un lien vers autre jsp --> 
<%@ include file="menu.jsp" %>

</p>

<c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
	<p>Vous êtes ${sessionScope.prenom } ${sessionScope.nom }</p>
</c:if>

<form method="post" action="bonjour" >
	<p>
		<label for="prenom">Prenom : </label>
		<input type="text" name="prenom" id="prenom" />
	</p>
	<p>	
		<label for="pass"> Nom : </label>
		<input type="text" name="nom" id="nom" />
	</p>
	
	<input type="submit" />
	
</form>




</body>
</html>