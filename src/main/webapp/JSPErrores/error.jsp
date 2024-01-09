

<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <c:import url="../INC/cabecera.jsp">
            <c:param name="titulo" value="Error" />
            <c:param name="estilo" value="${estilo}" />
        </c:import>
    </head>
    <body>
          <div class="error-page">
        <h2 class="error">${error}</h2>
        <p class="descripcion">Lo sentimos, ha ocurrido un error en la aplicación.</p>
        <p class="volver"><a href="${contexto}/FrontController">Volver</a></p>
    </div>
    </body>
</html>
