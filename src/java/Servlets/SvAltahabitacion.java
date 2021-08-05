package Servlets;

import Logica.ControladoraLogica;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rodrigo Gallo
 */
@WebServlet(name = "SvAltahabitacion", urlPatterns = {"/SvAltahabitacion"})
public class SvAltahabitacion extends HttpServlet {


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
        
        String nombre = request.getParameter("hab-nombre");
        int precio = Integer.parseInt(request.getParameter("precio"));
        String piso = request.getParameter("piso");
        String tipo = request.getParameter("tipo");    
            
        ControladoraLogica control = new ControladoraLogica();
        control.crearHabitacion(nombre, piso, precio, tipo);
        
        response.sendRedirect("abmhabitaciones.jsp");
       
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
