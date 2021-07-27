<%-- 
    Document   : abmreservas
    Created on : 27/07/2021, 16:58:49
    Author     : Rodrigo Gallo
--%>

<%@page import="Logica.Cliente"%>
<%@page import="java.util.Date"%>
<%@page import="Logica.Reserva"%>
<%@page import="Logica.Habitacion"%>
<%@page import="java.util.List"%>
<%@page import="Logica.ControladoraLogica"%>
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
        <div class="container">
            <h1>Hotel Gallito</h1>
            <h1>Altas, bajas y modificiones de las reservas del hotel</h1>
            <img src="img/logo.png" alt="alt"/>
            <div class="container">
        <form class="row g-3 needs-validation" novalidate action="SvAltahabitacion" method="post">
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="desde" type="date" class="form-control" id="user" placeholder="Desde" aria-label="Desde" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de ingreso
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
              <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
                <input name="hasta" type="date" class="form-control" placeholder="Hasta" aria-label="Hasta" aria-describedby="addon-wrapping" required>
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de salida
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
            <div class="input-group mb-3 input-group-lg">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
            <select name="habitacion" type="text" class="form-control" placeholder="Habitacion" aria-label="Habitacion" aria-describedby="addon-wrapping"  required>
      
                <option value="">Seleccione una habitacion</option>
                
                  <% ControladoraLogica control=new ControladoraLogica(); 
                    List <Habitacion> ListaHabitaciones = control.traerHabitaciones();
                        for (Habitacion habie: ListaHabitaciones){ %>
                        
                            <% String nombre=habie.getNombre(); 
                               String piso=habie.getPiso();
                               String tipo=habie.getTipo(); 
                               int precio=habie.getPrecio();
                               Long id=habie.getIdHabitacion(); 
                            %>
                            <option value="<%=id %>">
                                <%=nombre %>, Piso: <%=piso %>, Tipo:  <%=tipo %>, Precio: <%=precio %>
                            </option>
                        <% } %>
               
            </select>
            <div class="invalid-feedback">
                Por favor seleccione una habitacion de la lista
            </div>
            <div class="valid-feedback">
                Correcto!
            </div>
        </div>
            
            <div class="input-group mb-3 input-group-lg">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-fill"></i></span>
            <select name="cliente" type="text" class="form-control" placeholder="Cliente" aria-label="Cliente" aria-describedby="addon-wrapping"  required>
      
                <option value="">Seleccione un cliente</option>
                <%
                List <Cliente> listaClientes = control.traerClientes();
                        for (Cliente Cli: listaClientes){ %>
                        <tr>
                            <% String nombreCompleto=Cli.getApellido() + " " + Cli.getNombre();  
                               int dni=Cli.getDni(); %>
                               
                        <option value="<%=dni %>">
                            <%=nombreCompleto %>, Dni: <%=dni %>
                        </option>
                         <% } %>
            </select>
            <div class="invalid-feedback">
                Por favor seleccione un cliente de la lista para hacer la reserva
            </div>
            <div class="valid-feedback">
                Correcto!
            </div>
        </div>
            
           <div class="d-grid gap-2 d-md-block">
            <input type="submit" value="Ingresar" class="btn btn-primary">
            <a class="btn btn-primary" role="button" href="index.jsp">Volver</a>
            </div>
            
        </form>
            </div>
      
            
            <h2>Listado de Reservas del hotel</h2>
            
           <div class="table-responsive">
            <table class="table table-primary table-striped">
                <thead>
                    <tr>
                        <th scope="col">Nº Reserva</th>
                        <th scope="col">Desde</th>
                        <th scope="col">Hasta</th>
                        <th scope="col">Nombre de Habitacion</th>
                        <th scope="col">Cliente</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                    List <Reserva> ListaReservas = control.traerReservas();
                        for (Reserva reser: ListaReservas){ %>
                        <tr>
                            <% Date desde=reser.getDesde();
                               Date hasta=reser.getHasta();
                               Long id=reser.getIdReserva();
                               Habitacion habi=reser.getHabi(); 
                               String nombre=habi.getNombre();
                               Cliente clie=reser.getClie();
                               String apellidocliente = clie.getApellido();
                               String nombrecliente = clie.getNombre();
                               int dnicliente = clie.getDni();
                  
                            %>
                        </tr>
                        <td>
                            <%=id %>
                        </td>
                        <td>
                            <%=desde %>
                        </td>

                        <td>
                            <%=hasta %>
                        </td>

                        <td>
                            <%=nombre %>
                        </td>
                        <td>
                            <%=apellidocliente %>, <%=nombrecliente %> - <%=dnicliente %>
                        </td>
                        <% } %>

                </tbody>
            </table>
        </div>
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    </body>
</html>
