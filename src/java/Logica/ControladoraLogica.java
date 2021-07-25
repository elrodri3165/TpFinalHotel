package Logica;

import Persistencia.ControladoraPersistencia;


public class ControladoraLogica {
    
    ControladoraPersistencia controlJpa = new ControladoraPersistencia();
    
 
    public void crearEmpleado(String nombre, String apellido, int dni, String clave){
       
        Empleado empl = new Empleado(dni, nombre, apellido, clave);
        
        controlJpa.CrearEmpleado(empl);
    }
    
    
    public void crearHabitacion(String nombre, String piso, int precio, String tipo){
        
        Habitacion habi = new Habitacion();
        
        habi.setNombre(nombre);
        habi.setPiso(piso);
        habi.setPrecio(precio);
        habi.setTipo(tipo);
        
        controlJpa.CrearHabitacion(habi);
    }
    
    
    public void crearCliente(String apellido, String nombre, int dni, String Email){
        
        Cliente clie = new Cliente();
        
        clie.setApellido(apellido);
        clie.setNombre(nombre);
        clie.setEmail(Email);
        clie.setDni(dni);
        
      controlJpa.CearCliente(clie);
        
    }
   
}
