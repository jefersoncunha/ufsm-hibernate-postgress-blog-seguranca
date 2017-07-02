<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="adminHome.html">Blog Seguranca</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        <ul class="nav navbar-nav">

            <c:if test="${usuario.tipoUsuario == 1}">
                <li><a href="GerenciaUsuarios.html">Gerenciar Usuarios</a></li>
                <li><a href="adminTodosPosts.html">Gerenciar Todas Postagens</a></li>
            </c:if>

        <li><a href="adminMeusPosts.html">Gerenciar Minhas Postagens</a></li>
        <li><a href="todosPosts.html">Visualizar Blog</a></li>


      </ul>



        <ul class="nav navbar-nav navbar-right">
        <li><a href="login.html">Admin</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
