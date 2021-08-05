/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Basic;
import javax.persistence.Id;

/**
 *
 * @author Rodrigo Gallo
 */
@Entity
public class Empleado implements Serializable {

    @Id
    private int dni;

    @Basic
    private String Nombre;
    private String Apellido;
    private String Clave;
    private String Cargo;
    private String Fechanacimiento;
    private String Direccion;

    public Empleado() {
    }

    public Empleado(int dni, String Nombre, String Apellido, String Clave, String Cargo, String Fechanacimiento, String Direccion) {
        this.dni = dni;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Clave = Clave;
        this.Cargo = Cargo;
        this.Fechanacimiento = Fechanacimiento;
        this.Direccion = Direccion;
    }
    
    public int getDni() {
        return dni;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getClave() {
        return Clave;
    }

    public String getCargo() {
        return Cargo;
    }

    public String getFechanacimiento() {
        return Fechanacimiento;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public void setFechanacimiento(String Fechanacimiento) {
        this.Fechanacimiento = Fechanacimiento;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }
        
    public void setDni(int dni) {
        this.dni = dni;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }
   
}
