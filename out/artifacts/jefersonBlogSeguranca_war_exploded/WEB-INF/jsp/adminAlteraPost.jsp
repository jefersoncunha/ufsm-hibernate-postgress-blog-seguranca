
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Alterar Postagens</title>
	<jsp:include page="partials-admin/stylesheets.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<jsp:include page="partials-admin/menu_horizontal.jsp"></jsp:include>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title pull-left">
				Alterar Postagem
			</h2>

			<a class="btn btn-default pull-right" title="Voltar" onclick="window.history.back();">
				Voltar
			</a>


			<div class="clearfix"></div>
		</div>
		<div class="panel-body">

			<form action="cadastro-post.html" method="post">

				<div class="form-group">
					<label for="exampleInputEmail1">Titulo</label>
					<input type="text" class="form-control" id="tituloPost" placeholder="Seu titulo" name="tituloPost" value="${fn:escapeXml(param.tituloPost)}">
				</div>

				<div class="form-group">
					<label for="textoPost">Mensagem</label>
					<textarea name="textoPost" id="textoPost" class="form-control" rows="3" value="${fn:escapeXml(param.textoPost)}"></textarea>
				</div>

				<input type="hidden" name="idPost">

				<button type="submit" class="btn btn-default pull-right">Editar!</button>
			</form>



			<jsp:include page="partials-admin/rodape.jsp"></jsp:include>
		</div>

	</div>

		<jsp:include page="partials-admin/javascript.jsp"></jsp:include>
</body>
</html>
