package Persistencia;

import Logica.Empleado;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
    public void CrearEmpleado(Empleado empl){
        
        EmpleadoJpaController1 emplJpa = new EmpleadoJpaController1();
        
        try {
            emplJpa.create(empl);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
