<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>quiz - home</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
    <link href="resources/styles/compiled/index.css" rel="stylesheet"></link>
    <link href="resources/styles/compiled/home.css" rel="stylesheet"></link>
</head>

<body>
    <div class="global-header">
        <div class="brand">
            quiz
        </div>
        <div class="profile">
            <a href="deconnexion">Deconnexion</a> (Michel de Lakonta)
        </div>
    </div>
    <div class="home-content">
        <div class="home-content-header">
            <h2>Quiz créés</h2>
            <h4><a href="ajouterQuiz">Créer un quiz</a></h4>
        </div>
       	<div class="home-content-list">
      
     <c:if test="${!empty listQuiz}">  
			  <c:forEach items="${listQuiz}" var="quizunique">
			  
				  <div class="home-content-list-item">
	                <div class="title"><c:out value="${quizunique.libelle}"/></div>
	                <div class="actions">
	                    <a href="demarrerQuiz?idQuiz=${quizunique.id}">Lancer</a>
	                    <a href="ajouterQuestion">Modifier</a>
	                    <a href="supprimerQuiz?idQuiz=${quizunique.id}">Supprimer</a>
	                </div>
	           	 </div>
			  
			  </c:forEach>
			</c:if>
  
          

             
        </div>
    </div>
</body>

</html>