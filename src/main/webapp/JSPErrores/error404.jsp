

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <c:import url="../INC/cabecera.jsp">
            <c:param name="titulo" value="Error del servidor" />
            <c:param name="estilo" value="${estilo}" />
        </c:import>
    </head>
    <body>
        
        <div class="error">
            <a href="${contexto}"><img src="${contexto}/image/404.png"/></a>
        </div>
    </body>
</html>
