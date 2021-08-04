package Logica;

import Persistencia.ControladoraPersistencia;
import Persistencia.exceptions.NonexistentEntityException;
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
    
 
    public void crearEmpleado(String nombre, String apellido, int dni, String clave, String cargo, String fechanacimiento, String direccion){
       
        Empleado empl = new Empleado(dni, nombre, apellido, clave, cargo, fechanacimiento, direccion);
        
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
    
    
    public void crearCliente(String apellido, String nombre, int dni, String fechanacimiento, String direccion, String profesion){
        
        Cliente clie = new Cliente();
        
        clie.setApellido(apellido);
        clie.setNombre(nombre);
        clie.setDni(dni);
        clie.setDireccion(direccion);
        clie.setFechanacimiento(fechanacimiento);
        clie.setProfesion(profesion);
               
        controlJpa.CearCliente(clie);
        
    }
    
    public void crearReserva(Date desde, Date hasta, Habitacion habi, Empleado empl, Cliente clie, Date alta, String Personas ){
        
        Reserva reser = new Reserva();
       
        reser.setDesde(desde);
        reser.setHasta(hasta);
        reser.setHabi(habi);
        reser.setEmpl(empl);
        reser.setClie(clie);
        reser.setAlta(alta);
        reser.setPersonas(Personas);
        
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
    
    public Reserva eliminarReserva (int idreserva) throws NonexistentEntityException{
        controlJpa.eliminarReserva(idreserva);
        return null;
    }
   
}
