<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/index.css" var="index"></spring:url>
<link href="<c:url value='/resources/css/index.css' />" rel="stylesheet">
<spring:url value="/resources/js/main.js" var="indexJs"></spring:url>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dosis:wght@400;500&family=Roboto+Slab:wght@400;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${index}" />
<meta charset="UTF-8">
<title>Conversor de Moedas</title>
</head>
<body>
	<div class="page-number">03</div>
	<main class="transition-in">
		<h2>O resultado final da conversão é de</h2>
		<h1 id="result">
			<c:choose>
				<c:when test="${isDollar}">
				R$
				</c:when>
				<c:otherwise>
				$
				</c:otherwise>
			</c:choose>
			${result}
		</h1>
	</main>
	<footer>
		<p>
			made by <a>@matheussousaf</a>
		</p>
	</footer>
	<script src="${indexJs}"></script>
</body>
</html>