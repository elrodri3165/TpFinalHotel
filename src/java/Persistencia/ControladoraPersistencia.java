package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.Habitacion;
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
    
    public void CrearHabitacion(Habitacion habi){
        
        HabitacionJpaController habiJpa = new HabitacionJpaController();
       
        try {
            habiJpa.create(habi);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    public void CearCliente(Cliente clie){
        
    }
    
}
