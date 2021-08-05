package Servlets;

import Logica.Cliente;
import Logica.ControladoraLogica;
import Logica.Empleado;
import Logica.Habitacion;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rodrigo Gallo
 */
@WebServlet(name = "SVAltareserva", urlPatterns = {"/SVAltareserva"})
public class SVAltareserva extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
        //extraigo los datos de las fechas
        String des = request.getParameter("desde");
        int dia = Integer.parseInt(des.substring(8, 10));
        int mes = Integer.parseInt(des.substring(6, 7))-1;
        int anio = Integer.parseInt(des.substring(0, 4))-1900;
        
        //extraigo los datos de las fechas       
        String has = request.getParameter("hasta");
        int dia2 = Integer.parseInt(has.substring(8, 10));
        int mes2 = Integer.parseInt(has.substring(6, 7))-1;
        int anio2 = Integer.parseInt(has.substring(0, 4))-1900;
               
        //creo las dos variables de las fechas
        Date desde = new Date(anio, mes, dia);
        Date hasta = new Date(anio2, mes2, dia2);
        
        //extraigo el numero de cliente
        String clie = request.getParameter("cliente");
        int cliente = Integer.parseInt(clie);
        
        //extraigo el numero de habitacion
        String habi = request.getParameter("habitacion");
        int habitacion = Integer.parseInt(habi);
               
        //extraigo el dni del empleado que esta logueado       
        HttpSession misession = request.getSession(true);
        int empleado = Integer.parseInt((String) misession.getAttribute("dni"));
        
        //extraigo personas
        String personas = request.getParameter("personas");
        
        //creo fecha de hoy
        Date hoy = new Date();
        
        String idreserva = request.getParameter("idreserva");
        int id = Integer.parseInt(idreserva);
        
        ControladoraLogica control = new ControladoraLogica();
        
        //creo los objetos habitacion, reserva, cliente y empleado con los id
        Empleado empl = control.traerunEmpleado(empleado);
        Habitacion habit = control.traerHabitacion((int) habitacion);
        Cliente cli = control.traerCliente(cliente);
        
        if (id == 0){
            // de una reserva nueva      
            control.crearReserva(desde, hasta, habit, empl, cli, hoy, personas);
        }else{
            try {
                control.editarReserva(id, desde, hasta, habit, empl, cli, hoy, personas);
            } catch (Exception ex) {
                Logger.getLogger(SVAltareserva.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
                
        response.sendRedirect("abmreservas.jsp");
        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
