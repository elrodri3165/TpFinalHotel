<%-- 
    Document   : abmclientes.jsp
    Created on : 25/07/2021, 14:33:19
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
            <h1>Altas, bajas y modificiones de clientes del hotel</h1>
            <img src="img/logo.png" alt="alt"/>
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
 
           <div class="container-boton">
            <input type="submit" value="Ingresar" class="btn btn-primary">
            
            <a class="btn btn-primary" href="index.jsp">Volver</a>
            </div>
            
        </form>
      
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    </body>
</html>