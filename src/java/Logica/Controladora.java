package Logica;

import Persistencia.ControladoraPersistencia;

public class Controladora {
    
   ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearEmpleado(String Nombre, String Apellido, String Email, String Usuario, String Contraseña){
        Empleado empl = new Empleado();
        empl.setApellido(Apellido);
        empl.setNombre(Nombre);
        empl.setEmail(Email);
        empl.setUsuario(Usuario);
        empl.setContraseña(Contraseña);
        
        controlPersis.crearEmpleado(empl);
   
    } 
}
