<%-- 
    Document   : reservaspordia
    Created on : 03/08/2021, 19:56:08
    Author     : Rodrigo Gallo
--%>

<%@page import="java.util.TimeZone"%>
<%@page import="Logica.Empleado"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.Habitacion"%>
<%@page import="Logica.ControladoraLogica"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Logica.Reserva"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    %>
        <div class="container">
            <h1>Hotel Gallito</h1>
            <h1>Altas, bajas y modificiones de las reservas</h1>
            <img src="img/logo.png" alt="alt"/>
            <div class="container">
                <form class="row g-3 needs-validation" novalidate action="reservaspordia.jsp" onsubmit="return validarSubmit()" method="get">
            
                <div class="input-group mb-5 input-group-lg">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-calendar-date-fill"></i></span>
                    <input name="dia" type="date" class="form-control"  placeholder="Seleccione un dia para buscar" aria-label="Desde" aria-describedby="addon-wrapping" required>
                </div>
                <div class="d-grid gap-2 d-md-block">
                    <input id="botoningresar" type="submit" value="Buscar" class="btn btn-primary">
                    <a class="btn btn-primary" role="button" href="menu.jsp">Volver</a>
                </div>
                </form>
            </div>
      
            
            <h2>Listado de Reservas del hotel por dia</h2>
            
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
                    ControladoraLogica control=new ControladoraLogica();
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
                               
                               String des = request.getParameter("dia");
                               int dia = Integer.parseInt(des.substring(8, 10));
                               int mes = Integer.parseInt(des.substring(6, 7))-1;
                               int anio = Integer.parseInt(des.substring(0, 4))-1900;
                               
                               Date diaform = new Date(anio, mes, dia);
                               
                               if(diaform.equals(alta)){
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
                        <% } }%>

                </tbody>
            </table>
        </div>
    </div>
    <script src="js/form-control.js" type="text/javascript"></script>
            <% } %>
    </body>
</html>
