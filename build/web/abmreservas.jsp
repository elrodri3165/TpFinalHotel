<%-- 
    Document   : abmreservas
    Created on : 27/07/2021, 16:58:49
    Author     : Rodrigo Gallo
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.TimeZone"%>
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
    TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
    Date hoy = new Date();
    String newstring = new SimpleDateFormat("yyyy-MM-dd").format(hoy);
    String idreserva = (String)misession.getAttribute("idreserva");
    String desdesession = (String)misession.getAttribute("desde");
    String hastasession = (String)misession.getAttribute("hasta");
    String clientesession = (String)misession.getAttribute("cliente");
    String empleadosession = (String)misession.getAttribute("empleado");
    String habitacionsession = (String)misession.getAttribute("habitacion");
    String altasession = (String)misession.getAttribute("alta");
    String personassession = (String)misession.getAttribute("personas");
    if (desdesession != null && hastasession != null && clientesession !=null && empleadosession != null && habitacionsession != null && altasession != null){
        request.getSession().setAttribute("desde", null);
        request.getSession().setAttribute("hasta", null);
        request.getSession().setAttribute("cliente", null);
        request.getSession().setAttribute("empleado", null);
        request.getSession().setAttribute("habitacion", null);
        request.getSession().setAttribute("alta", null);
        request.getSession().setAttribute("personas", null);
    }else{
        desdesession = "";
        hastasession = "";
        clientesession = "0";
        empleadosession = "0";
        habitacionsession = "0";
        altasession = "";
        personassession = "0";
        idreserva = "0";
    }
    %>
        <div class="container-xl">
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
            
            <% if(idreserva != "0"){%>
            <div class="alert alert-success" role="alert"> 
                <p>Usted esta modificando una reserva! La habitacion para los dias reservados no se tienen en cuenta como ocupados!</p>
                <p>Reserva a editar N??: <%=idreserva %></p>
            </div>
            <% } %>                   
            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                <input name="desde" type="date" class="form-control" id="desde" placeholder="Desde" aria-label="Desde" aria-describedby="addon-wrapping" 
                       onchange="ControlDisp()" onblur="ControlDisp()" required value="<%=desdesession %>">
                <div class="invalid-feedback">
                    Por favor ingrese la fecha de ingreso
                </div>
                <div class="valid-feedback">
                    Correcto!
                </div>
            </div>
            
            <input id="idreserva" name="idreserva" type="hidden" value="<%=idreserva %>"> 
              
            <div class="input-group mb-5 input-group-lg">
                <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                <input name="hasta" type="date" class="form-control" id="hasta" placeholder="Hasta" aria-label="Hasta" aria-describedby="addon-wrapping" 
                       onchange="ControlDisp()" onblur="ControlDisp()" required value="<%=hastasession %>">
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
                
                  <%  
                    int habitacionint = Integer.parseInt(habitacionsession);
                    ControladoraLogica control=new ControladoraLogica(); 
                    List <Habitacion> ListaHabitaciones = control.traerHabitaciones();
                        for (Habitacion habie: ListaHabitaciones){ %>
                        
                            <% String nombre=habie.getNombre(); 
                               String piso=habie.getPiso();
                               String tipo=habie.getTipo(); 
                               int precio=habie.getPrecio();
                               int id=habie.getIdHabitacion(); 
                            %>
                            <option value="<%=id %>" <%  if (id == habitacionint ){%>selected  <% }%>>
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
                int clienteint = Integer.parseInt(clientesession);
                List <Cliente> listaClientes = control.traerClientes();
                        for (Cliente Cli: listaClientes){ %>
                        <tr>
                            <% String nombreCompleto=Cli.getApellido() + " " + Cli.getNombre();  
                               int dni=Cli.getDni(); %>
                               
                        <option value="<%=dni%>" <% if (dni == clienteint ){%>selected  <% }%>  >
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
                    <% 
                    int i=Integer.parseInt(personassession);  
                    %>
                    <option value="">Por favor seleccione las personas</option>
                    <option value="1" <% if (i == 1 ){%>selected  <% }%> >1 persona</option>
                    <option value="2" <% if (i == 2 ){%>selected  <% }%> >2 personas</option>
                    <option value="3" <% if (i == 3 ){%>selected  <% }%> >3 personas</option>
                    <option value="4" <% if (i == 4 ){%>selected  <% }%> >4 personas</option>
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
                        <th scope="col">N??Reserva</th>
                        <th scope="col">Desde</th>
                        <th scope="col">Hasta</th>
                        <th scope="col">Habitacion</th>
                        <th scope="col">Cliente</th>
                        <th scope="col">Empleado</th>
                        <th scope="col">Costo total</th>
                        <th scope="col">Personas</th>
                        <th scope="col">Alta</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
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
                               String altachico = (formateadorFechaCorta.format(alta));
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
                        <td>
                            <a class="btn btn-primary" role="button" href="SvEditarreserva?id=<%=id %>"><i class="bi bi-pencil-fill"></i></a>
                        </td>
                        <td>
                            <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#modaleliminar<%=id%>"><i class="bi bi-trash-fill"></i></button>
                        </td>
                        <div class="modal" id="modaleliminar<%=id %>" tabindex="-1">
                            <div class="modal-dialog">
                             <div class="modal-content">
                               <div class="modal-header">
                                 <h5 class="modal-title">ATENCION!!!!!</h5>
                                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                               </div>
                               <div class="modal-body">
                                 <p>Esta seguro de que desea eliminar una reserva?</p>
                               </div>
                               <div class="modal-footer">
                                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Volver</button>
                                 <a type="button" href="SvEliminarreserva?id=<%=id %>" class="btn btn-danger">Eliminar</a>
                               </div>
                             </div>
                           </div>
                         </div>
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
    <script src="js/eliminarreserva.js" type="text/javascript"></script>
        <% } %>
    </body>
</html>
