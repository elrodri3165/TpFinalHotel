package Servlets;

import Logica.ControladoraLogica;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rodrigo Gallo
 */
@WebServlet(name = "SvRegister", urlPatterns = {"/SvRegister"})
public class SvRegister extends HttpServlet {

    
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
        String password = request.getParameter("password");
        int dni = Integer.parseInt(request.getParameter("dni"));
        String cargo = request.getParameter("cargo");
        String fechanacimiento = request.getParameter("fechanacimiento");
        String direccion = request.getParameter("direccion");
        
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("dni", dni);
        request.getSession().setAttribute("password", password);
        
        ControladoraLogica control = new ControladoraLogica();
        control.crearEmpleado(nombre, apellido, dni, password, cargo, fechanacimiento, direccion);
        
        response.sendRedirect("index.jsp");
          
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
