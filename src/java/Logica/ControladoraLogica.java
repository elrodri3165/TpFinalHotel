package Logica;

import Persistencia.ControladoraPersistencia;


public class ControladoraLogica {
    
 
    public void crearEmpleado(String nombre, String apellido, int dni, String clave){
        
        ControladoraPersistencia controlJpa = new ControladoraPersistencia();
        
        Empleado empl = new Empleado(dni, nombre, apellido, clave);
        
        controlJpa.CrearEmpleado(empl);
          
    }
   
}
