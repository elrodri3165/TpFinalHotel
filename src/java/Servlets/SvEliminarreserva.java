package Servlets;

import Logica.Cliente;
import Logica.ControladoraLogica;
import Persistencia.exceptions.NonexistentEntityException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rodrigo Gallo
 */
@WebServlet(name = "SvEliminarreserva", urlPatterns = {"/SvEliminarreserva"})
public class SvEliminarreserva extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String id = request.getParameter("id");
        int numeroid = Integer.parseInt(id);        
        ControladoraLogica control = new ControladoraLogica();
        try {
            control.eliminarReserva(numeroid);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(SvEliminarreserva.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
