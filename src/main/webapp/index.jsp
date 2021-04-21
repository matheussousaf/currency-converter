<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversor de Moedas</title>
<spring:url value="/resources/css/index.css" var="index"></spring:url>
<spring:url value="/resources/js/index.js" var="indexJs"></spring:url>
<link rel="stylesheet" type="text/css" href="${index}" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dosis:wght@400;500&family=Roboto+Slab:wght@400;500&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="page-number">01</div>
	<main id="transition-out">
		<h1>Conversor de Moedas</h1>
		<div class="action-container">
			<a onclick="transitionOut()"> Clique para continuar </a>
		</div>
	</main>
	<footer>
		<p>
			made by <a>@matheussousaf</a>
		</p>
	</footer>
	 <script src="${indexJs}"></script>
</body>
</html>