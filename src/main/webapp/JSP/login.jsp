<%-- 
    Author     : javierprogrameitor
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/CSS/styles.css" rel="stylesheet" type="text/css">
        <title>Bienvenido</title>
    </head>
    <body>
        <div class="container">
            
           <h1>Bienvenido, ${cookieValue}!</h1>
            <p>¡Has iniciado sesión con éxito!</p> 
            <form method="post" action= "<%=request.getContextPath() %>/LoginOut">
                <input class="salir" type="submit" value="Salir" name="button"/>
            </form>
        </div>
    </body>
</html>
