package Logica;

import Persistencia.ControladoraPersistencia;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.util.Date;
import java.util.List;


public class ControladoraLogica {
    
    ControladoraPersistencia controlJpa = new ControladoraPersistencia();
    
    public boolean verificarUsuario(int dni, String password){
        List<Empleado>listaEmpleados =controlJpa.traerEmpleados();
        
        if (listaEmpleados != null){
            for (Empleado empl : listaEmpleados){
                if (empl.getClave().equals(password) && empl.getDni()==dni){
                    return true;
                } 
            }
            
        }
        return false;
    }
    
 
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
    
    public void crearReserva(Date desde, Date hasta, Habitacion habi, Empleado empl, Cliente clie ){
        
        Reserva reser = new Reserva();
       
        reser.setDesde(desde);
        reser.setHasta(hasta);
        reser.setHabi(habi);
        reser.setEmpl(empl);
        reser.setClie(clie);
        
        controlJpa.CrearReserva(reser);
        
    }
    
    public List <Cliente> traerClientes(){
        return controlJpa.traerClientes();
    }
    
    public List <Habitacion> traerHabitaciones(){
        return controlJpa.traerHabitaciones();
    }
    
    public List <Reserva> traerReservas(){
        return controlJpa.traerReservas();
    }
    
    public List <Empleado> traerEmpleados(){
        return controlJpa.traerEmpleados();
    }
    
    public Empleado traerunEmpleado(int dni){
        return controlJpa.taerunEmpleado(dni);
    }
    
    public Habitacion traerHabitacion (int numero){
        return controlJpa.traerunaHabitacion(numero);
    }
    
    public Cliente traerCliente (int dni){
        return controlJpa.traerunCliente(dni);
    }
   
}
