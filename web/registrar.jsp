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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Gallito - Login</title>
    </head>
    <body>
        <div class="container">
            <h1>Hotel Gallito</h1>
            <h1>Utilize el formulario para registrarse</h1>
            <img src="img/logo.png" alt="alt"/>
        <form class="row g-3 needs-validation" novalidate action="SvRegister" method="post" onsubmit="return validarLogin()">
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="apellido" type="text" class="form-control" id="user" placeholder="Apellido" aria-label="Apellido" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese su apellido
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="nombre" type="text" class="form-control" id="user" placeholder="Nombre" aria-label="Nombre" aria-describedby="addon-wrapping" required>
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
            
            
            
           <div class="container-boton">
            <input type="submit" value="Ingresar" class="boton-login">
           
            </div>
            
        </form>
      
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    <script src="js/validacion.js"></script>
    </body>
</html>
