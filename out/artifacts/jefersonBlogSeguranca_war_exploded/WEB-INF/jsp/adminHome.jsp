<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Controle de Pagamentos</title>
	<jsp:include page="partials-admin/stylesheets.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<jsp:include page="partials-admin/menu_horizontal.jsp"></jsp:include>
	<div class="jumbotron">
		<h1>Sistema Blog Segurança</h1>

        <p><c:out value="${usuario.nomeUsuario}" escapeXml="true"/> </p>



	</div>

	<jsp:include page="partials-admin/rodape.jsp"></jsp:include>
</div> <!-- END CONTAINER -->

<jsp:include page="partials-admin/javascript.jsp"></jsp:include>
</body>
</html>