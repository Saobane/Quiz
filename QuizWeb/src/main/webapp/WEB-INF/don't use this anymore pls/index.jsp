<!-- Steven ZANOU -->
<!-- JSP contenant le formulaire de la connexion -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		 <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    	 <link rel="stylesheet" href="../styles/out/index.css">
         <link rel="stylesheet" href="../styles/out/login.css">
		<title>Accueil</title>
	</head>
	<body>
		<p>BIENVENUE</p>
  		
  		<form:form method="POST" action="connexion.do" commandName="formulaireConnexion">
      		<table>
       			<tr><th></th><th></th></tr>
       			<tr>
           			<td><form:label path="mail" >Adresse mail :</form:label></td>
           			<td><form:input path="mail" placeholder="nom@domain.com"/></td>
       			</tr>
     			<tr>
           			<td><form:label path="mdp" >Mot de passe :</form:label></td>
           			<td><form:input type="password" path="mdp" placeholder="password"/></td>
       			</tr>
          		<tr>
         			<td colspan="2" class="submit"><input type="submit" value="Connexion"/></td>
         			<td> ou <a href="inscription">Inscription</a> </td>
        		</tr>
   			</table> 
  		</form:form>

	</body>
</html>