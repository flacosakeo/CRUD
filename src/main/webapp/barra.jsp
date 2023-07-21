
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"  href="css/Style-barra.css">
    </head>
    <body>
        
        <nav class="navbar fixed-top navbar-dark bg-secondary">
            <img src="imagen/codo.png" alt="alt"/>
            <div class="col-sm-10">
                <a href="${pageContext.request.contextPath}/index.jsp">INICIO</a>
                <a href="${pageContext.request.contextPath}/clientes">VER PERSONAS</a>
                <a href="${pageContext.request.contextPath}/form_alta.jsp">DAR DE ALTA</a>
            </div>   
        </nav>
    </body>
</html>
