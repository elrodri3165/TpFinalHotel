<%-- 
    Document   : registrar
    Created on : 17/07/2021, 19:35:30
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
        <div class="container">
            <h1>Hotel Gallito</h1>
            <h1>Utilize el formulario para registrarse</h1>
            <img src="img/logo.png" alt="alt"/>
            <div class="modal" id="myModal" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Advertencia!!</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p>No puede estar ningun campo vacio</p>
                  <p>El DNI o la clave no puede tener espacios o caracteres especiales</p>
                  <p>El dni solo adminte numeros</p>
                  <p>La clave no se puede ser mayor a 10 digitos</p>
                  <p>El apellido, nombre, cargo, direccion no pueden ser mayores a 50 caracteres</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
                </div>
            </div>
            <form class="row g-3 needs-validation" novalidate action="SvRegister" method="post" onsubmit="return validarLogin()">
            
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="apellido" type="text" class="form-control" id="apellido" placeholder="Apellido" aria-label="Apellido" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese su apellido
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>
            
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Nombre" aria-label="Nombre" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese su nombre
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>
            
           
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                    <input name="dni" type="number" class="form-control" id="dni" placeholder="DNI" aria-label="DNI" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el usuario a utilizar
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>

                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-key-fill"></i></span>
                    <input id="password" name="password" type="password" class="form-control" id="clave" placeholder="Clave" aria-label="Clave" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese la clave a utilizar
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>
                
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-lines-fill"></i></span>
                    <input name="cargo" type="text" class="form-control" id="cargo" placeholder="Cargo" aria-label="Cargo" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese su cargo
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>
                
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-mailbox2"></i></span>
                    <input name="direccion" type="text" class="form-control" id="direccion" placeholder="Direccion" aria-label="Direccion" aria-describedby="addon-wrapping" required>
                    <div class="invalid-feedback">
                        Por favor ingrese su direccion
                    </div>
                    <div class="valid-feedback">
                        Correcto!
                    </div>
                </div>
                
                <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                <input name="fechanacimiento" type="date" class="form-control" id="fechanacimiento" placeholder="Fecha de nacimiento" aria-label="Fecha de nacimiento" 
                       aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de nacimiento
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
         
                <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                    <div class="container-fluid justify-content-start">
                        <input type="submit" class="btn btn-outline-primary me-2" role="button" value="Ingresar" class="boton-login">
                        <a class="btn btn-sm btn-outline-secondary" type="button" href="index.jsp">Volver</a>
                    </div>
                </nav> 
            </form>
        </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    <script src="js/validacion.js"></script>
    </body>
</html>
