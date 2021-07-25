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
    int dni;

    @Basic
    String Nombre;
    String Apellido;
    String Clave;

    public Empleado() {
    }

    public Empleado(int dni, String Nombre, String Apellido, String Clave) {
        this.dni = dni;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Clave = Clave;
       
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
