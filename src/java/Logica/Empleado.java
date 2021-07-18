/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Rodrigo Gallo
 */
@Entity
public class Empleado {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int IdEmpleado;
    
    @Basic
    String Nombre;
    String Apellido;
    String Email;
    String Usuario;
    String Contraseña;

    public Empleado() {
    }

    public Empleado(int IdEmpleado, String Nombre, String Apellido, String Email, String Usuario, String Contraseña) {
        this.IdEmpleado = IdEmpleado;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Email = Email;
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
    }

    public int getIdEmpleado() {
        return IdEmpleado;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getEmail() {
        return Email;
    }

    public String getUsuario() {
        return Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setIdEmpleado(int IdEmpleado) {
        this.IdEmpleado = IdEmpleado;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
    
 
}
