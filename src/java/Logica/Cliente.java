/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author Rodrigo Gallo
 */
@Entity
public class Cliente {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int IdCliente;
    
    @Basic
    String Apellido;
    String Nombre;
    String Dni;
    String Email;
    
    @OneToMany
    List <Reserva> listaReserva;

    public Cliente() {
    }

    public Cliente(int IdCliente, String Apellido, String Nombre, String Dni, String Email, List<Reserva> listaReserva) {
        this.IdCliente = IdCliente;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.Dni = Dni;
        this.Email = Email;
        this.listaReserva = listaReserva;
    }

    public int getIdCliente() {
        return IdCliente;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getDni() {
        return Dni;
    }

    public String getEmail() {
        return Email;
    }

    public List<Reserva> getListaReserva() {
        return listaReserva;
    }

    public void setIdCliente(int IdCliente) {
        this.IdCliente = IdCliente;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setListaReserva(List<Reserva> listaReserva) {
        this.listaReserva = listaReserva;
    }

    
    
    
}
