<%-- 
    Document   : abmreservas
    Created on : 27/07/2021, 16:58:49
    Author     : Rodrigo Gallo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Logica.Empleado"%>
<%@page import="java.text.DateFormat"%>
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
    Date hoy = new Date();
    String newstring = new SimpleDateFormat("yyyy-MM-dd").format(hoy);
    %>
        <div class="container">
              <div class="modal" id="myModal" tabindex="-1">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Advertencia!!!</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <p>La habitacion ya esta reservada en las fechas seleccionadas</p>
                      <p>Por favor verificar que las fechas no sean iguales!</p>
                      <p>Por favor verificar la cantidad de personas que intenta reservar</p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
              </div>
            <h1>Hotel Gallito</h1>
            <h1>Altas, bajas y modificiones de las reservas</h1>
            <img src="img/logo.png" alt="alt"/>
            <div class="container">
                <form class="row g-3 needs-validation" novalidate action="SVAltareserva" onsubmit="return validarSubmit()" method="post">
            
            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                <input name="desde" type="date" class="form-control" id="desde" placeholder="Desde" aria-label="Desde" aria-describedby="addon-wrapping" 
                       onchange="ControlDisp()" onblur="ControlDisp()" required>
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de ingreso
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                <input name="hasta" type="date" class="form-control" id="hasta" placeholder="Hasta" aria-label="Hasta" aria-describedby="addon-wrapping" 
                       onchange="ControlDisp()" onblur="ControlDisp()" required>
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de salida
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
            <div class="input-group mb-3 input-group-lg">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-list-check"></i></span>
            <select name="habitacion" type="text" class="form-control" id="habitacion" placeholder="Habitacion" aria-label="Habitacion" aria-describedby="addon-wrapping" 
                    onchange="ControlDisp()" onblur="ControlDisp()" required>
      
                <option value="">Seleccione una habitacion</option>
                
                  <% ControladoraLogica control=new ControladoraLogica(); 
                    List <Habitacion> ListaHabitaciones = control.traerHabitaciones();
                        for (Habitacion habie: ListaHabitaciones){ %>
                        
                            <% String nombre=habie.getNombre(); 
                               String piso=habie.getPiso();
                               String tipo=habie.getTipo(); 
                               int precio=habie.getPrecio();
                               int id=habie.getIdHabitacion(); 
                            %>
                            <option value="<%=id %>">
                                <%=nombre %>, Piso: <%=piso %>, Tipo:  <%=tipo %>, Precio:$ <%=precio %>
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
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-lines-fill"></i></span>
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
            
        <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-people-fill"></i></span>
                <select name="personas" type="" class="form-control" id="cantidadpersonas" placeholder="Cantidad de peronas" aria-label="Cantidad de personas" 
                        aria-describedby="addon-wrapping" onchange="ControlDisp()" onblur="ControlDisp()" required>
                <div class="invalid-feedback">
                    Por favor seleccione las personas
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
                    <option value="">Por favor seleccione las personas</option>
                    <option value="1">1 persona</option>
                    <option value="2">2 personas</option>
                    <option value="3">3 personas</option>
                    <option value="4">4 personas</option>
                </select>
        </div>
            
        <div id="div"> </div>
          
        <div class="input-group mb-3">
            <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
            <div class="form-floating">
                <input name="alta" type="date" class="form-control" placeholder="Fecha de alta" aria-label="Fecha de alta" 
                       aria-describedby="addon-wrapping" value="<%=newstring %>" disabled="true">
                <label for="alta">Fecha de alta</label>
            </div>
        </div>
            
         <div class="input-group mb-3">
             <span class="input-group-text" id="addon-wrapping"><i class="bi bi-currency-dollar"></i></span>
             <div class="form-floating">
                <input name="valortotal" id="valortotal" type="number" class="form-control" placeholder="Valor total" aria-label="Valor total" 
                       aria-describedby="addon-wrapping" disabled="true">
                <label for="valortotal">Valor total de la reserva</label>
            </div>
        </div>    
                        
        <div class="d-grid gap-2 d-md-block">
            <input id="botoningresar" type="submit" value="Ingresar" class="btn btn-primary">
            <a class="btn btn-primary" role="button" href="menu.jsp">Volver</a>
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
                        <th scope="col">Empleado</th>
                        <th scope="col">Costo total</th>
                        <th scope="col">Personas</th>
                        <th scope="col">Alta</th>
                        
                    </tr>
                </thead>

                <tbody>
                    <%
                    List <Reserva> ListaReservas = control.traerReservas();
                        for (Reserva reser: ListaReservas){ %>
                        <tr>
                            <% Date desde=reser.getDesde();
                               Date hasta=reser.getHasta();
                               //formateador de fecha
                               DateFormat formateadorFechaCorta = DateFormat.getDateInstance(DateFormat.SHORT);
                               //achico cada fecha
                               String desdechico = (formateadorFechaCorta.format(desde));
                               String hastachico = (formateadorFechaCorta.format(hasta));
                               //obtengo los datos                                                                                           
                               int id=reser.getIdReserva();
                               Habitacion habi=reser.getHabi();
                               String nombre=habi.getNombre();
                               Cliente clie=reser.getClie();
                               String apellidocliente = clie.getApellido();
                               String nombrecliente = clie.getNombre();
                               int dnicliente = clie.getDni();
                               Empleado empl = reser.getEmpl();
                               String apellidoEmpleado = empl.getApellido();
                               String nombreEmpleado = empl.getNombre();
                               String personas = reser.getPersonas();
                               Date alta = reser.getAlta();
                               String altachico = (formateadorFechaCorta.format(hoy));
                               //obtengo el costo calculando con los dias
                               Long dias = hasta.getTime() - desde.getTime();
                               int precio = habi.getPrecio();
                               Long costo = dias * precio /86400000;
                            %>
                        </tr>
                        <td>
                            <%=id %>
                        </td>
                        <td>
                            <%=desdechico %>
                        </td>

                        <td>
                            <%=hastachico %>
                        </td>

                        <td>
                            <%=nombre %>
                        </td>
                        <td>
                            <%=apellidocliente %>, <%=nombrecliente %> - <%=dnicliente %>
                        </td>
                        
                        <td>
                            <%=apellidoEmpleado %>, <%=nombreEmpleado %>
                        </td>
                        
                        <td>
                            $ <%=costo %>
                        </td>
                        <td>
                            <%=personas %> Persona/s
                        </td>
                        <td>
                            <%=altachico %>
                        </td>
                        <% } %>

                </tbody>
            </table>
        </div>
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
    <script src="js/control-disponibilidad.js" type="text/javascript"></script>
    <script src="js/validar-submit.js" type="text/javascript"></script>
    <script src="js/sumar-total.js" type="text/javascript"></script>
    <script src="js/verificar-personas.js" type="text/javascript"></script>
        <% } %>
    </body>
</html>
