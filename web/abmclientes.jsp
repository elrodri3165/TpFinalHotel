<%-- 
    Document   : abmclientes.jsp
    Created on : 25/07/2021, 14:33:19
    Author     : Rodrigo Gallo
--%>

<%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="Logica.ControladoraLogica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <!-- comunes para todos -->
    <!-- CSS bootstrap  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

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
        <h1>Altas, bajas y modificiones de clientes del hotel</h1>
        <img src="img/logo.png" alt="alt" />
        <div class="container">
            <form class="row g-3 needs-validation" novalidate action="SvAltacliente" method="post">

                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="apellido" type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el apellido
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>

                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="nombre" type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el nombre
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>

                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="dni" type="number" class="form-control" placeholder="Dni" aria-label="Dni" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el DNI
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>

                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="email" type="email" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el E-Mail
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>

                <div class="d-grid gap-2 d-md-block">
                    <input type="submit" value="Ingresar" class="btn btn-primary">
                    <a class="btn btn-primary" role="button" href="menu.jsp">Volver</a>
                </div>

            </form>
        </div>
        
        <h2>Listado de Clientes</h2>
        
        <div class="table-responsive">
            <table class="table table-primary table-striped">
                <thead>
                    <tr>
                        <th scope="col">Apellido y nombre</th>
                        <th scope="col">DNI</th>
                        <th scope="col">EMAIL</th>
                    </tr>
                </thead>

                <tbody>
                    <% ControladoraLogica control=new ControladoraLogica(); 
                    List <Cliente> listaClientes = control.traerClientes();
                        for (Cliente Clien: listaClientes){ %>
                        <tr>
                            <% String nombreCompleto=Clien.getApellido() + " " + Clien.getNombre(); 
                               String email=Clien.getEmail(); 
                               int dni=Clien.getDni(); %>
                        </tr>
                        <td>
                            <%=nombreCompleto %>
                        </td>

                        <td>
                            <%=dni %>
                        </td>

                        <td>
                            <%=email %>
                        </td>
                        <% } %>

                </tbody>
            </table>
        </div>
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
<% } %>
</body>
</html>