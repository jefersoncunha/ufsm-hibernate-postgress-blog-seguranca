<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>POST</title>
    <jsp:include page="partials/stylesheet.jsp"></jsp:include>
</head>
<body>


<div class="demo-blog mdl-layout mdl-layout--fixed-header mdl-color--grey-100 mdl-js-layout has-drawer is-upgraded">
    <jsp:include page="partials/header.jsp"></jsp:include>

    <main class="mdl-layout__content">

        <div class="demo-blog__posts mdl-grid">

            <c:forEach items="${posts}" var="p">
                <div class="mdl-card mdl-cell mdl-cell--12-col mdl-shadow--2dp">

                    <div class="mdl-card__media mdl-color-text--grey-50">
                        <h3><a href="#">
                            <c:out value=" ${p.tituloPost}" />

                        </a>
                        </h3>
                    </div>
                    <div class="mdl-color-text--grey-600 mdl-card__supporting-text">
                        <c:out value="${fn:substring(p.textoPost, 0,199)}..." />
                    </div>

                    <div class="mdl-card__supporting-text meta mdl-color-text--grey-600">
                        <div>
                            <span><strong>Data:</strong> <c:out value=" ${p.dataPost}" /></span>
                        </div>
                    </div>
                    <div class="mdl-card__actions mdl-card--border">
                        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="#" onclick="document.location='verPost.html?id=${p.idPost}'" value="Ver">
                            Saiba Mais
                        </a>
                    </div>
                </div>

            </c:forEach>


        </div>

        <jsp:include page="partials/rodape.jsp"></jsp:include>
    </main>
</div>
<div class="mdl-layout__obfuscator"></div>

<jsp:include page="partials/javascript.jsp"></jsp:include>
</body>
</html>
