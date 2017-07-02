<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>POST</title>
	<jsp:include page="partials/stylesheet.jsp"></jsp:include>
</head>
<body>


<div class="demo-blog demo-blog--blogpost mdl-layout mdl-js-layout has-drawer is-upgraded ">
	<jsp:include page="partials/header.jsp"></jsp:include>

	<main class="mdl-layout__content">

		<div class="demo-blog__posts mdl-grid">

			<div class="demo-blog__posts mdl-grid">

				<div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col">
					<div class="demo-back">
						<a class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" href="#" title="go back" role="button">
							<i class="material-icons" role="presentation">arrow_back</i>
						</a>
					</div>

						<div class="mdl-card__media mdl-color-text--grey-50" style="min-height: 200px;">

							<h3>
								<c:out value=" ${post.tituloPost}" escapeXml="true" />
							</h3>
						</div>
						<div class="mdl-color-text--grey-700 mdl-card__supporting-text meta">
							<div class="section-spacer"></div>
						</div>
						<div class="content mdl-color-text--grey-700 mdl-card__supporting-text mdl-cell content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">


								<c:out value=" ${post.textoPost}" escapeXml="true" />
						</div>

					<div class="mdl-color-text--primary-contrast mdl-card__supporting-text comments">
							<form action="cadastro-comentario.html?idPost=${post.idPost}" method="post" commandName="comentarios">

								<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-placeholder is-invalid is-upgraded" data-upgraded=",MaterialTextfield">
									<input required="" data-prompt-position="topLeft:0" class="mdl-textfield__input"  name="tituloComentario" type="text">
									<label class="mdl-textfield__label" for="sample3">Nome</label>
								</div>

								<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-upgraded" data-upgraded=",MaterialTextfield">
									<textarea rows="1" class="mdl-textfield__input" id="comment" name="textoComentario"></textarea>
									<label class="mdl-textfield__label" for="sample3">Comentario</label>
								</div>


								<div class="mdl-card__actions">
									<input class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" type="submit" value="Enviar" name="form"
										   data-upgraded=",MaterialButton,MaterialRipple">
											<div class="status_email">
										<ul>
										</ul>
									</div>

								</div>


							</form>




						<c:forEach items="${comentariosPost}" var="cp">
							<div class="comment mdl-color-text--grey-700">
								<header class="comment__header">
									<div class="comment__author">
										<strong><c:out value=" ${cp.tituloComentario}"  escapeXml="true" /></strong>
									</div>
								</header>
								<div class="comment__text">
									<c:out value=" ${cp.textoComentario}" escapeXml="true" />
								</div>
							</div>
						</c:forEach>

					</div>

				</div>


			</div>
		</div>
		<jsp:include page="partials/rodape.jsp"></jsp:include>
	</main>
</div>
<div class="mdl-layout__obfuscator"></div>

<jsp:include page="partials/javascript.jsp"></jsp:include>
<script src='https://www.google.com/recaptcha/api.js'></script>


</body>
</html>