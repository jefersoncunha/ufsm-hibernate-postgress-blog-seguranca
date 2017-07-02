<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Controle de Postagens</title>
	<jsp:include page="partials-admin/stylesheets.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<jsp:include page="partials-admin/menu_horizontal.jsp"></jsp:include>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title pull-left">
				Listar Postagens
			</h2>


			<a class="btn btn-default pull-right" title="Novo Post" data-toggle="modal" data-target="#cadastrarModal">
				Cadastrar Nova Postagem
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
		                      Titulo
		                    </span>
							</strong>
						</div>
					</td>

					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Texto
		                    </span>
							</strong>
						</div>
					</td>
					<td>
						<div aling="center">
							<strong>
		                    <span class="style5">
		                      Data
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


						<c:forEach items="${postsUsuario}" var="p">
							<tr>
								<td><c:out value="${p.idPost}" escapeXml="true"/></td>
								<td><c:out value="${p.tituloPost}" escapeXml="true"/></td>
								<td><c:out value="${p.textoPost}" escapeXml="true"/></td>
								<td><c:out value="${p.dataPost}" escapeXml="true"/></td>
								<td>
									<a class="btn btn-default " title="Visualizar" target="_blank"

									   href='verPost.html?id=<c:out value="${p.idPost}" escapeXml="true"/>' >

										<span class="glyphicon glyphicon-eye-open"></span>
									</a>

									<a class="btn btn-default " title="Alterar"
									   href='alterarPost.html?id=<c:out value="${p.idPost}" escapeXml="true"/>' >
										<span class="glyphicon glyphicon-edit"></span>
									</a>


									<a class="btn btn-default"  onclick="return confirm('Apagar Postagem?');"
									   href='deletaPost.html?id=<c:out value="${p.idPost}" escapeXml="true"/>' >

                                		<span class="glyphicon glyphicon-trash"></span>
									</a>
								</td>
							</tr>
						</c:forEach>
			</table>

			<jsp:include page="partials-admin/rodape.jsp"></jsp:include>
		</div>

		<div class="modal fade" id="cadastrarModal" tabindex="-1" role="dialog" aria-labelledby="cadastrarModal">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">Postagem</h4>
					</div>
					<form action="cadastro-post.html" method="post">
					<div class="modal-body">


							<div class="form-group">
								<label for="exampleInputEmail1">Titulo</label>
								<input type="text" class="form-control" id="tituloPost" placeholder="Seu titulo" name="tituloPost">
							</div>

							<div class="form-group">
								<label for="textoPost">Mensagem</label>
								<textarea name="textoPost" id="textoPost" class="form-control" rows="3"></textarea>
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>

						<button type="submit" class="btn btn-primary pull-right">Cadastrar!</button>
					</div>
				</div>
				</form>
			</div>


		</div>


		<jsp:include page="partials-admin/javascript.jsp"></jsp:include>
</body>
</html>
