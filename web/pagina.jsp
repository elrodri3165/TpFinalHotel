<%@page import="Logica.Empleado"%>
<%@page import="Logica.ControladoraLogica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%= session.getAttribute("nombre") %> 
         <%= session.getAttribute("apellido") %> 
         <%= session.getAttribute("password") %> 
         <%= session.getAttribute("objeto2") %> 
         
         
    </body>
</html>
