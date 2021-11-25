 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ma page d'accueil</title>
</head>
<body>

<!--  Utilisation de balises java mais mauvaise pratique -->
<%
	String name = (String) request.getAttribute("name");
%>

<!-- Utilistion de l'Expression Language --> 
<p> Bienvenue � ${ !empty name ? name : '' } </p> <!--  Expression ternaire -->
<p> ${ noms[0] } </p>

<p> Bonjour ${ auteur.prenom } ${ auteur.nom } </p>
<p> ${ !auteur.actif ? "Vous n'�tes pas tr�s actifs" : "Vous �tes actif" } </p>

<!-- Utilisation de JSTL pour set une variable-->
<!--  le scope peut �tre page, request, session, application  --> 
<c:set var="pseudo" value="Mateo21" scope="page" />

<!-- Utilisation de JSTL et EL pour aller chercher une variable Java -->
<!--  Les deux �critures sont similaires -->
<p><c:out value="${ variable }">Valeur par d�faut</c:out></p>
<p><c:out value="${ variable }" default="Valeur par d�faut" escapeXml="false"/> </p>


<!--  Utilisation d'un Java bean et EL-->
<c:set target="${ auteur }" property="prenom" value="Mathieu" />
<p><c:out value="${ auteur.prenom }" /></p>

<!--  retirer une variable d�finie -->
<c:remove var="pseudo" scope="page" />


<!-- Un test confition if en JSTL -->
<c:if test="${ 50 > 10 }" var="variable">
    C'est vrai !
</c:if>


<!--  Test multiple condition if en JSTL -->
<c:choose>
    <c:when test="${ variable }">Du texte</c:when>
    <c:when test="${ autreVariable }">Du texte</c:when>
    <c:when test="${ encoreUneAutreVariable }">Du texte</c:when>
    <c:otherwise></c:otherwise>
</c:choose>



<!--  Les boucles simples en JSTL -->
<c:forEach var="i" begin="0" end="10" step="2">
    <p>Un message n�<c:out value="${ i }" /> !</p>
</c:forEach>


<!--  Une boucle sur un array -->
<c:forEach items="${ titres }" var="titre" varStatus="status">
    <p>N�<c:out value="${ status.count }" /> : <c:out value="${ titre }" /> !</p>
</c:forEach>


<!--  Boucle sur une chaine de caract�res -->
<c:forTokens var="morceau" items="Un �l�ment/Encore un autre �l�ment/Un dernier pour la route" delims="/ ">
    <p>${ morceau }</p>
</c:forTokens>




<!--  Permet d'inclure un bout de code sur plusieurs pages (un bas de page commun par exemple)
permet de centraliser si on veut faire des modifs sur du contenu pr�sent sur plusieurs pages  -->
<%@ include file="menu.jsp" %>



</body>	
</html>