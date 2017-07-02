<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Controle de Usuarios</title>
	<jsp:include page="partials-admin/stylesheets.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<jsp:include page="partials-admin/menu_horizontal.jsp"></jsp:include>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title pull-left">
				Listar Usuarios
			</h2>


			<a class="btn btn-default pull-right" title="Novo Post" data-toggle="modal" data-target="#cadastrarModal">
				Cadastrar Novo Usuario
			</a>

            <a class="btn btn-default pull-left" title="Voltar" onclick="window.history.back();">
                Voltar
            </a>


			<div class="clearfix"></div>
		</div>
		<div class="panel-body">


			<table class="table table-striped table-bordered">
				<tr>
					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      ID
		                    </span>
							</strong>
						</div>
					</td>

					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Nome
		                    </span>
							</strong>
						</div>
					</td>

					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Login
		                    </span>
							</strong>
						</div>
					</td>
					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Status
		                    </span>
							</strong>
						</div>
					</td>
					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Ações
		                    </span>
							</strong>
						</div>
					</td>
				</tr>


				<c:forEach items="${usuariosCadastrados}" var="u">
					<tr>
						<td><c:out value=" ${u.idUsuario}" escapeXml="true"/></td>
						<td><c:out value=" ${u.nomeUsuario}" escapeXml="true"/></td>
                        <td><c:out value=" ${u.loginUsuario}" escapeXml="true"/></td>
                        <td><c:out value=" ${u.ativo}" escapeXml="true"/></td>

						<td>
							<a class="btn btn-default"
							   onclick="return confirm('Ativar / Desativar');"
                               href='ativaUsuario.html?id=<c:out value="${u.idUsuario}" escapeXml="true"/>' >
								<span class="glyphicon glyphicon-edit"></span>
							</a>
						</td>
					</tr>
				</c:forEach>
			</table>


		</div>

		<div class="modal fade" id="cadastrarModal" tabindex="-1" role="dialog" aria-labelledby="cadastrarModal">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">Postagem</h4>
					</div>
					<form action="cadastro-usuario.html" method="post">
						<div class="modal-body">


							<div class="form-group">
								<label for="nomeUsuario">Nome</label>
								<input type="text" class="form-control" id="nomeUsuario" placeholder="Nome Usuario" name="nomeUsuario">
							</div>

							<div class="form-group">
								<label for="loginUsuario">Login</label>
								<input type="text" class="form-control" id="loginUsuario" placeholder="Login Usuario" name="loginUsuario">
							</div>

							<div class="form-group">
								<label for="senhaUsuario">Senha</label>
								<input type="password" class="form-control" id="senhaUsuario" placeholder="Senha Usuario" name="senhaUsuario">
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
							<button type="submit" class="btn btn-primary pull-right">Cadastrar!</button>
						</div>
				</div>
				</form>


			</div>

            <jsp:include page="partials-admin/rodape.jsp"></jsp:include>
		</div>


		<jsp:include page="partials-admin/javascript.jsp"></jsp:include>
</body>
</html>
