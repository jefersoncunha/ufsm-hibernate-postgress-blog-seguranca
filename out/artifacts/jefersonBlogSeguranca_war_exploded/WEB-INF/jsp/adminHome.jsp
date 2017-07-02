<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
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

        <p>Seja bem-vindo ${usuario.nomeUsuario} </p>

	</div>

	<jsp:include page="partials-admin/rodape.jsp"></jsp:include>
</div> <!-- END CONTAINER -->

<jsp:include page="partials-admin/javascript.jsp"></jsp:include>
</body>
</html>