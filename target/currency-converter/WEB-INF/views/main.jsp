<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	 <div class="page-number">02</div>
    <main class="transition-in transition-out">
        <form:form class="input-container" type="submit" method="POST" modelAttribute="currency">
            <div class="usd">
                <form:input class="input" path="currencyValue" type="number" min="0.00" step="0.05" value="0.00" onchange="setTwoNumberDecimal(this)"/>
            </div>
            <div class="invert">
            	<form:checkbox path="dollarCurrentCurrency" id="check" onclick="invert()" value="Troca"  />
            </div>
        </form:form>
        <p id="description" onclick="transitionOut()">Converta $0,00 para reais.</p>
    </main>
    <footer>
        <p>
            made by <a>@matheussousaf</a>
        </p>
    </footer>
	<script src="${indexJs}"></script>
</body>
</html>