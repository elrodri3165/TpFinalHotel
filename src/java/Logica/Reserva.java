/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

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
public class Reserva {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int Id_Reserva;
    
    @Basic
    int Habitacion;
    @Temporal(javax.persistence.TemporalType.DATE)
    Date Desde = new Date();
    @Temporal(javax.persistence.TemporalType.DATE)
    Date Hasta = new Date();
    
    @OneToOne
    Habitacion habi;

    public Reserva() {
    }

    public Reserva(int Id_Reserva, int Habitacion, Habitacion habi) {
        this.Id_Reserva = Id_Reserva;
        this.Habitacion = Habitacion;
        this.habi = habi;
    }

    public int getId_Reserva() {
        return Id_Reserva;
    }

    public int getHabitacion() {
        return Habitacion;
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

    public void setId_Reserva(int Id_Reserva) {
        this.Id_Reserva = Id_Reserva;
    }

    public void setHabitacion(int Habitacion) {
        this.Habitacion = Habitacion;
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
    
}
