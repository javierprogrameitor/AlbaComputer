<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <c:import url="../INC/cabecera.jsp">
            <c:param name="titulo" value="Aviso" />
            <c:param name="estilo" value="${estilo}" />
        </c:import>
    </head>
    <body>
       <div id="principal" class="aviso-page">
        <h2 class="aviso">${aviso}</h2>
        <p class="descripcion">Hay un error con el servidor No se actualizó.</p>
        <p class="volver"><a href="${contexto}/InsertController">Volver</a></p>
    </div>
    </body>
</html>