<%-- 
    Document   : index
    Created on : 17/07/2021, 18:49:30
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
        <title>Hotel Gallito - Login</title>
    </head>
    <body>
        <div class="modal" id="myModal" tabindex="-1">
         <div class="modal-dialog">
           <div class="modal-content">
             <div class="modal-header">
               <h5 class="modal-title">Advertencia!!</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">
               <p>Ingrese un usuario y/o contraseña correcta</p>
             </div>
             <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
             </div>
           </div>
         </div>
       </div>
        <div class="container">
            <h1>Hotel Gallito</h1>
            <img src="img/logo.png" alt="alt"/>
        <h3>Utilize el formulario para ingresar al sistema del hotel</h3>
        <form class="row g-3 needs-validation" novalidate action="SvLogin" method="post" onsubmit="return validarlogin()">
           
            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="dni" type="number" class="form-control" id="user" placeholder="DNI" aria-label="DNI" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese el dni de un usuario registrado
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>

            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-key-fill"></i></span>
                <input id="password" name="clave" type="password" class="form-control" id="user" placeholder="Clave" aria-label="Clave" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese la clave
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
                       
            <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <div class="container-fluid justify-content-start">
                    <input type="submit" value="Ingresar" class="btn btn-outline-primary me-2">
                    <a class="btn btn-outline-primary me-2" role="button" href="registrar.jsp">Registrarse</a>
                </div>
            </nav>
        </form>
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    <script src="js/validacion.js"></script>
<% 
HttpSession mal = request.getSession();
String error = (String)mal.getAttribute("error");
if (error == "ok"){ %>
<script>
var myModal = new bootstrap.Modal(document.getElementById('myModal'))
myModal.show()
</script>
<% 
mal.setAttribute("error", "null");
        } %>
    </body>
</html>
