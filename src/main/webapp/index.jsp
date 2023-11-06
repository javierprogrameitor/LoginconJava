<%-- 
    Author     : javier
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/CSS/styles.css" rel="stylesheet" type="text/css">
        <title>Formulario de login</title>
    </head>
    <body>
        <div class="container">
            <h1>Iniciar sesión</h1>
            <form  action="<%=request.getContextPath()%>/LoginIn" method="post">
                <label for="username">Usuario:</label>
                <input type="text" name="username" required /><br>

                <label for="password">Contraseña:</label>
                <input type="password" name="password" required /><br>


                <button type="submit">Iniciar Sesión</button>
            </form>

            <c:if test="${param.error == '1'}">
                <p class="error-message">Usuario o contraseña incorrectos.</p>
            </c:if>

            <c:if test="${param.mensaje == '1'}">
                <p class="error-mesage">Has salido y eliminaste tu Cookie.</p>
            </c:if>
        </div>
    </body>
</html>
