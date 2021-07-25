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
    String Email;
    
    @OneToMany
    List <Reserva> listaReserva;

    public Cliente() {
    }

    public Cliente(int Dni, String Apellido, String Nombre, String Email, List<Reserva> listaReserva) {
        this.dni = Dni;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.Email = Email;
        this.listaReserva = listaReserva;
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

    public void setEmail(String Email) {
        this.Email = Email;
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

    public String getEmail() {
        return Email;
    }

    public List<Reserva> getListaReserva() {
        return listaReserva;
    }

}
