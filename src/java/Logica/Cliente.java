/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author Rodrigo Gallo
 */
@Entity
public class Cliente implements Serializable {
    
    @Id
    int dni;
    
    @Basic
    String Apellido;
    String Nombre;
    String Fechanacimiento;
    String Direccion;
    String Profesion;
    
    @OneToMany
    List <Reserva> listaReserva;

    public Cliente() {
    }

    public Cliente(int dni, String Apellido, String Nombre, String Fechanacimiento, String Direccion, String Profesion, List<Reserva> listaReserva) {
        this.dni = dni;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.Fechanacimiento = Fechanacimiento;
        this.Direccion = Direccion;
        this.Profesion = Profesion;
        this.listaReserva = listaReserva;
    }

    public void setFechanacimiento(String Fechanacimiento) {
        this.Fechanacimiento = Fechanacimiento;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public void setProfesion(String Profesion) {
        this.Profesion = Profesion;
    }
           
    public void setDni(int Dni) {
        this.dni = Dni;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
   
    public void setListaReserva(List<Reserva> listaReserva) {
        this.listaReserva = listaReserva;
    }

    public int getDni() {
        return dni;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getNombre() {
        return Nombre;
    }
    
    public String getFechanacimiento() {
        return Fechanacimiento;
    }

    public String getDireccion() {
        return Direccion;
    }

    public String getProfesion() {
        return Profesion;
    }
    
    public List<Reserva> getListaReserva() {
        return listaReserva;
    }

}
