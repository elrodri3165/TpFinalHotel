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
@WebServlet(name = "SvAltacliente", urlPatterns = {"/SvAltacliente"})
public class SvAltacliente extends HttpServlet {

    
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
        
        String apellido = request.getParameter("apellido");
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        int dni = Integer.parseInt(request.getParameter("dni"));
        
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("dnicliente", dni);
        request.getSession().setAttribute("email", email);
        
        ControladoraLogica control = new ControladoraLogica();
        control.crearCliente(apellido, nombre, dni, email);
        
        response.sendRedirect("abmclientes.jsp");
               
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
