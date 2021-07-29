package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.Habitacion;
import Logica.Reserva;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
    ClienteJpaController clieJpa = new ClienteJpaController();
    EmpleadoJpaController1 emplJpa = new EmpleadoJpaController1();
    HabitacionJpaController habiJpa = new HabitacionJpaController();
    ReservaJpaController reserJpa = new ReservaJpaController();
    
            
    public void CrearEmpleado(Empleado empl){
       
        try {
            emplJpa.create(empl);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void CrearHabitacion(Habitacion habi){
        
        try {
            habiJpa.create(habi);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    public void CearCliente(Cliente clie){
        
        try {
            clieJpa.create(clie);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    public void CrearReserva (Reserva reser){
        try {
            reserJpa.create(reser);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List <Cliente> traerClientes(){
        return clieJpa.findClienteEntities();
    }
    
    public List <Habitacion> traerHabitaciones(){
        return habiJpa.findHabitacionEntities();
    }
    
    public List <Reserva> traerReservas(){
        return reserJpa.findReservaEntities();
    }
    
    public List<Empleado> traerEmpleados(){
        return emplJpa.findEmpleadoEntities();
    }
    
    public Empleado taerunEmpleado(int dni){
        return emplJpa.findEmpleado(dni);
    }
    
    public Habitacion traerunaHabitacion (int numero){
        return habiJpa.findHabitacion(numero);
    }
    
    public Cliente traerunCliente (int dni){
        return clieJpa.findCliente(dni);
    }
    
}
