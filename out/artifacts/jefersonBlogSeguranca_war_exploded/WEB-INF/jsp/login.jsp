<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
	<head>
		<title>Login</title>

		<jsp:include page="partials/stylesheet.jsp"></jsp:include>
		<style>

			.demo-card-wide.mdl-card {
				width: 640px;
				height: 300px;
			}
			.status_email{
				margin-left: 20px;
				margin-top: 20px;
			}

			.demo-blog .mdl-card {
				display: flex;
				flex-direction: column;
				align-items: stretch;
				min-height: 400px;
			}

			.mdl-card__actions {
				z-index: 4;
				margin-top: 30px
				border:none;
			}
			#name {
				display:flex;
				margin-top: 10px;
				justify-content: left;
			}

			#contact{
				diplay: flex;
			}
			.mdl-button {
				margin-left: 10px ;
			}
			.demo-card-wide {
				height: 100px;
			}

			.demo-card-wide > .mdl-card__title {
				color: #fff;
				height: 64px;
				background-color:#607d8b;
			}
			.mdl-card__title-text {
				position: relative;
				top: 6px;
			}

			.demo-card-wide > .mdl-card__menu {
				color: #fff;
			}
			#mycard {
				height: 500px;
				width:100%;
				display:flex;
				flex-direction: row;
			// outline: red solid 10px;
				justify-content: center;
				align-items: center;
			}
			.mdl-textfield {
				width: 250px;
				margin-right: 10px;
			}
		</style>


	</head>
<body>

<div class="demo-blog mdl-layout mdl-layout--fixed-header mdl-color--grey-100 mdl-js-layout has-drawer is-upgraded">
	<jsp:include page="partials/header.jsp"></jsp:include>

	<main class="mdl-layout__content">

		<div id="mycard">



			<div class="demo-card-wide mdl-card mdl-shadow--2dp">

				<div class="mdl-card__title">
					<h2 class="mdl-card__title-text">Login Administração</h2>

				</div>
				<div class="mdl-card__supporting-text">


					<form method="POST" action="login.html" accept-charset="UTF-8">
						<div id="name">
							<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-placeholder is-invalid is-upgraded" data-upgraded=",MaterialTextfield">
								<input required="" data-prompt-position="topLeft:0" class="mdl-textfield__input"  name="login" type="text">
								<label class="mdl-textfield__label" for="sample3">Login</label>
							</div>

						</div>
						<div id="contact">
							<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-placeholder is-invalid is-upgraded" data-upgraded=",MaterialTextfield">
								<input required="" data-prompt-position="topLeft:0" class="mdl-textfield__input"  name="senha" type="text">
								<label class="mdl-textfield__label" for="sample3">Senha</label>
							</div>

						</div>
						<div class="mdl-card__actions">

							<input class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect"  name="form"  type="submit" value="Enviar" data-upgraded=",MaterialButton,MaterialRipple">
							<div class="status_email">
								${msg}
							</div>
						</div>
					</form>

				</div>


			</div>
		</div>


		<jsp:include page="partials/rodape.jsp"></jsp:include>
	</main>
</div>
<div class="mdl-layout__obfuscator"></div>

<jsp:include page="partials/javascript.jsp"></jsp:include>
</body>
</html>













	<%--<hr align="center" width="90%" size="1" color=blue>--%>
	<%--<center><h2>BLOG jef jef jef</h2></center>--%>
	<%--<center><p>Ultimas 10 postagens</p></center>--%>
	<%--<center><input type="button" onclick="document.location='todosPosts.html'" style="width: 10%" value="Ver Todos"></center>--%>
	<%--<br>--%>
	<%--<center><table border="2">--%>
		<%--<tr>--%>
			<%--<th style="width: 20%; text-align: center;">Autor</th>--%>
			<%--<th style="width: 20%; text-align: center;">Titulo</th>--%>
			<%--<th style="width: 40%; text-align: center;">Texto</th>--%>
			<%--<th style="width: 20%; text-align: center;">Data</th>--%>
			<%--<th style="width: 40%; text-align: center;">A��o</th>--%>
		<%--</tr>--%>
		<%--<c:forEach items="${posts}" var="p">--%>
			<%--<tr>--%>
				<%--<td>${p.usuario.nomeUsuario}</td>--%>
				<%--<td>${p.tituloPost}</td>--%>
				<%--<td>${fn:substring(p.textoPost, 0,199)}...</td>--%>
				<%--<td>${p.dataPost}</td>--%>
				<%--<td><input type="button" onclick="document.location='verPost.html?id=${p.idPost}'" value="Post Completo"></td>--%>
			<%--</tr>		--%>
		 <%--</c:forEach>--%>
	<%--</table></center>--%>
