/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Empleado;

/**
 *
 * @author Rodrigo Gallo
 */
public class ControladoraPersistencia {
    
    EmpleadoJpaController emplJpa = new EmpleadoJpaController();
    
    public void crearEmpleado(Empleado empl){
        emplJpa.create(empl);  
    }
    
}
