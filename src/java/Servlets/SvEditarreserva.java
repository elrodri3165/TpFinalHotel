package Servlets;

import Logica.Cliente;
import Logica.ControladoraLogica;
import Logica.Empleado;
import Logica.Habitacion;
import Logica.Reserva;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rodrigo Gallo
 */
@WebServlet(name = "SvEditarreserva", urlPatterns = {"/SvEditarreserva"})
public class SvEditarreserva extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
       
        String id = request.getParameter("id");
        int numeroid = Integer.parseInt(id);        
        ControladoraLogica control = new ControladoraLogica();
        //con el id traigo la reserva que voy a editar
        Reserva reser = control.traerunaReserva(numeroid);
        //traigo todos los datos de la reserva
        int idreserva = reser.getIdReserva();
        Date desde = reser.getDesde();
        Date hasta = reser.getHasta();
        Cliente clien = reser.getClie();
        Empleado empl = reser.getEmpl();
        Habitacion habi = reser.getHabi();
        Date alta = reser.getAlta();
        
        //formateo cada variable
        String desdestring = new SimpleDateFormat("yyyy-MM-dd").format(desde);
        String hastastring = new SimpleDateFormat("yyyy-MM-dd").format(hasta);
        
        int dnicliente = clien.getDni();
        String dniclientestring = Integer.toString(dnicliente);
        
        int dniempleado = empl.getDni();
        String dniempleadostring = Integer.toString(dniempleado);
        
        int numerohabitacion = habi.getIdHabitacion();
        String numerohabitacionstring = Integer.toString(numerohabitacion);
        
        String altastring = new SimpleDateFormat("yyyy-MM-dd").format(alta);
        
        String personas = reser.getPersonas();
        
        //guardo los datos en variables de session
        request.getSession().setAttribute("idreserva", id);
        request.getSession().setAttribute("desde", desdestring);
        request.getSession().setAttribute("hasta", hastastring);
        request.getSession().setAttribute("cliente", dniclientestring);
        request.getSession().setAttribute("empleado", dniempleadostring);
        request.getSession().setAttribute("habitacion", numerohabitacionstring);
        request.getSession().setAttribute("alta", altastring);
        request.getSession().setAttribute("personas", personas);
        
        response.sendRedirect("abmreservas.jsp");
        
        }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
