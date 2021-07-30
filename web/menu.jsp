<%-- 
    Document   : menu
    Created on : 25/07/2021, 14:01:29
    Author     : Rodrigo Gallo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- comunes para todos -->
        <!-- CSS bootstrap  -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- favicon -->
        <link rel="icon" href="img/favicon.png" type="image/png" />
        <title>Hotel Gallito - Login</title>
    </head>
    <body>
        <% 
HttpSession misession = request.getSession();
String user = (String)misession.getAttribute("dni");
if (user == null){
    response.sendRedirect("index.jsp");
}
else{
        %>
        <div class="container">
            <h1>Hotel Gallito</h1>
            <h1>Menu Principal</h1>
            <img src="img/logo.png" alt="alt"/>
        
            <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <form class="container-fluid justify-content-start">
                    <a class="btn btn-outline-primary me-2" type="button" href="abmhabitaciones.jsp">ABM Habitaciones</a>
                    
                    <a class="btn btn-outline-primary me-2" type="button" href="abmclientes.jsp">ABM Clientes</a>
                    
                    <a class="btn btn-outline-primary me-2" type="button" href="abmreservas.jsp">ABM Reservas</a>
                    
                    <a class="btn btn-sm btn-outline-secondary" type="button" href="index.jsp">Logout</a>                
                </form>
            </nav>
        </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    <script src="js/validacion.js"></script>
    <% } %>
    </body>
</html>