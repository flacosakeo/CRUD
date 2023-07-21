<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet"  href="css/Style-form-consultas.css">
        <title>Listado de Clientes</title>
    </head>
    <body>
        <%@include file="barra.jsp" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <h1>LISTA DE CLIENTES</h1>
        
        <c:forEach items="${listaClientes}" var="cliente">
        <center>
            <form class="col-sm-7">    
                <div class="form-group row">    
                    <label class="col-sm-2 col-form-label">Codigo: </label>
                    <div class="col-sm-10">
                        <input class="form-control" value="${cliente.id}" disabled>
                    </div>
                </div>
                <div class="form-group row">    
                    <label class="col-sm-2 col-form-label">Nombre: </label>
                    <div class="col-sm-10">
                        <input class="form-control" value="${cliente.nombre}" disabled>
                    </div>
                </div>
                <div class="form-group row">    
                    <label class="col-sm-2 col-form-label">Apellido: </label>
                    <div class="col-sm-10">
                        <input class="form-control" value="${cliente.apellido}" disabled>
                    </div>
                </div>
                <div class="form-group row">    
                    <label class="col-sm-2 col-form-label">Domicilio: </label>
                    <div class="col-sm-10">
                        <input class="form-control" value="${cliente.domicilio}" disabled>
                    </div>
                </div>
                    <div id="botones">
                        <a href="${pageContext.request.contextPath}/confirmacion_modal.jsp"><input type="button" value="Modificar"  class="btn btn-secondary col-sm-2"></a>
                        <a href="${pageContext.request.contextPath}/eliminar?id=${cliente.id}"><input type="button" value="Eliminar"  class="btn btn-warning col-sm-2"></a>
                    </div>             
                </div>  
            </form>           
        </center>        
            </c:forEach>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
