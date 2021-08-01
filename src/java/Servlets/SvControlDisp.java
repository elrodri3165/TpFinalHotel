package Servlets;

import Logica.ControladoraLogica;
import Logica.Habitacion;
import Logica.Reserva;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvControlDisp", urlPatterns = {"/SvControlDisp"})
public class SvControlDisp extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<div class=\"alert alert-danger\" id=\"divalert\" role=\"alert\">");
            out.println("La habitacion esta ocupada en las fechas seleccionadas!");
            out.println("</div>");
            out.println("<script src=\"js/bloquear-boton.js\" type=\"text/javascript\"></script>");
        }   
    }
    
    protected void processRequest2(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<div class=\"alert alert-danger\" id=\"divalert\" role=\"alert\">");
            out.println("Las fechas no son correctas! 'HASTA' no puede ser anterior a 'DESDE' ni tampoco iguales");
            out.println("</div>");            
        }   
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
        
        
        ControladoraLogica control = new ControladoraLogica();
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
        
        //creo el objeto habitacion con la seleccioanda
        String habi = request.getParameter("habitacion");
        int habitacion = Integer.parseInt(habi);
        Habitacion habit = control.traerHabitacion((int) habitacion);
        
        //creo la lista de reservas concretadas en la base.
        List <Reserva> ListaReservas = control.traerReservas();
        
               
        if (hasta.after(desde)){
            for (Reserva reser: ListaReservas){
                Date reservaDesde = reser.getDesde();
                Date reservaHasta = reser.getHasta();
                
                Habitacion reservaHabitacion = reser.getHabi();
                int numeroHabitacionreservada = reservaHabitacion.getIdHabitacion();
                
                if (habitacion == numeroHabitacionreservada){
                    if (desde.before(reservaHasta) && desde.after(reservaDesde)){
                        processRequest(request, response);
                    }
                    else if(hasta.before(reservaHasta) && hasta.after(reservaDesde)){
                        processRequest(request, response); 
                    }
                    else if(desde.equals(reservaDesde)){
                        processRequest(request, response);
                    }
                    else if(hasta.equals(reservaHasta)){
                        processRequest(request, response);
                    }
                }
            }
        }
        else {
            processRequest2(request, response);
        }
        
        
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
