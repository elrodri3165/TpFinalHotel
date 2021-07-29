/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Rodrigo Gallo
 */
@Entity
public class Reserva implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int idReserva;
    
    @Basic
    @Temporal(javax.persistence.TemporalType.DATE)
    Date Desde = new Date();
    @Temporal(javax.persistence.TemporalType.DATE)
    Date Hasta = new Date();
    
    @OneToOne
    Habitacion habi;
    
    @OneToOne
    Empleado empl;
    
    @OneToOne
    Cliente clie;

    public Reserva() {
    }

    public Reserva(int idReserva,  Habitacion habi, Empleado empl, Cliente clie) {
        this.idReserva = idReserva;
        this.habi = habi;
        this.empl = empl;
        this.clie = clie;
    }
    
    
    public int getIdReserva() {
        return idReserva;
    }

    public Date getDesde() {
        return Desde;
    }

    public Date getHasta() {
        return Hasta;
    }

    public Habitacion getHabi() {
        return habi;
    }

    public Empleado getEmpl() {
        return empl;
    }

    public Cliente getClie() {
        return clie;
    }
   
    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public void setDesde(Date Desde) {
        this.Desde = Desde;
    }

    public void setHasta(Date Hasta) {
        this.Hasta = Hasta;
    }

    public void setHabi(Habitacion habi) {
        this.habi = habi;
    }

    public void setEmpl(Empleado empl) {
        this.empl = empl;
    }

    public void setClie(Cliente clie) {
        this.clie = clie;
    }
   
}
