package Servlets;

import Logica.ControladoraLogica;
import Logica.Empleado;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    
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
        
        String dnistring = request.getParameter("dni");
        String clave = request.getParameter("clave");
        int dni=Integer.parseInt(dnistring);
        
        ControladoraLogica control = new ControladoraLogica();
        boolean autorizado = control.verificarUsuario(dni, clave);
        
        if (autorizado == true){
            HttpSession misession = request.getSession(true);
            String dni2 = String.valueOf(dni);  
            misession.setAttribute("dni", dni2);
            
            response.sendRedirect("menu.jsp");
        }
        else{
           HttpSession mal = request.getSession(true);
           mal.setAttribute("error", "ok");
           response.sendRedirect("index.jsp");
        }
       
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
