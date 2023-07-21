<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet"  href="css/Style-form-altas.css">
        <title>Formulario de Altas</title>
    </head>
    <body>
    <%@include file="barra.jsp" %>
    <center> 
        <form action="${pageContext.request.contextPath}/altas" method="post" class="col-sm-7" >
            <h1>Formulario de carga</h1>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nombre: </label>
                <div class="col-sm-10">
                    <input class="form-control" placeholder="Nombre" name="nombre" required>
                    
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Apellido: </label>
                <div class="col-sm-10">
                    <input class="form-control" placeholder="Apellido" name="apellido" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Domicilio: </label>
                <div class="col-sm-10">
                    <input class="form-control" placeholder="Domicilio" name="domicilio" required>
                </div>
            </div>
            <div id="botones" >
                <input type="submit" value="Cargar" class="btn btn-success col-sm-2">
                <a href="${pageContext.request.contextPath}/index.jsp"><input type="button" value="Volver" class="btn btn-dark col-sm-2"></a>
            </div>
            
            
        </form>
    </center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
