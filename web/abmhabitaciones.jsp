<%-- 
    Document   : abmhabitaciones
    Created on : 25/07/2021, 12:42:40
    Author     : Rodrigo Gallo
--%>

<%@page import="Logica.Habitacion"%>
<%@page import="Logica.ControladoraLogica"%>
<%@page import="java.util.List"%>
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
            <h1>Altas, bajas y modificiones de habitaciones del hotel</h1>
            <img src="img/logo.png" alt="alt"/>
            <div class="container">
        <form class="row g-3 needs-validation" novalidate action="SvAltahabitacion" method="post">
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="hab-nombre" type="text" class="form-control" id="user" placeholder="Nombre de la habitacion" aria-label="Nombre de la habitacion" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese el nombre de la habitacion
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="precio" type="number" class="form-control" placeholder="Precio" aria-label="Precio" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese el precio
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
            <div class="input-group mb-3 input-group-lg">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
            <select name="piso" type="text" class="form-control" placeholder="Piso" aria-label="Piso" aria-describedby="addon-wrapping" >
      
                <option value="PB">PB</option>
                
                <option value="Piso1">Piso1</option>
                
                <option value="Piso2">Piso2</option> 
      
            </select>
            <div class="invalid-feedback">
                Por favor ingrese el piso de la habitacion
            </div>
            <div class="valid-feedback">
                Correcto!
            </div>
        </div>
            
            <div class="input-group mb-3 input-group-lg">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
            <select name="tipo" type="text" class="form-control" placeholder="Tipo" aria-label="Tipo" aria-describedby="addon-wrapping" >
      
                <option value="Single">Single</option>
                
                <option value="Doble">Doble</option>
                
                <option value="Triple">Triple</option>
                
                <option value="Multiple">Multiple</option>
                
            </select>
            <div class="invalid-feedback">
                Por favor ingrese el tipo de habitacion
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
      
            
            <h2>Listado de habitaciones del hotel</h2>
            
           <div class="table-responsive">
            <table class="table table-primary table-striped">
                <thead>
                    <tr>
                        <th scope="col">Nº Habitacion</th>
                        <th scope="col">Nombre de la habitacion</th>
                        <th scope="col">Piso</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Precio</th>
                    </tr>
                </thead>

                <tbody>
                    <% ControladoraLogica control=new ControladoraLogica(); 
                    List <Habitacion> ListaHabitaciones = control.traerHabitaciones();
                        for (Habitacion habie: ListaHabitaciones){ %>
                        <tr>
                            <% String nombre=habie.getNombre(); 
                               String piso=habie.getPiso();
                               String tipo=habie.getTipo(); 
                               int precio=habie.getPrecio();
                               Long id=habie.getIdHabitacion();
                                
                            %>
                        </tr>
                        <td>
                            <%=id %>
                        </td>
                        <td>
                            <%=nombre %>
                        </td>

                        <td>
                            <%=piso %>
                        </td>

                        <td>
                            <%=tipo %>
                        </td>
                        <td>
                            <%=precio %>
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