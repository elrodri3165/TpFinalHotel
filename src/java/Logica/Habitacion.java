/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
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
public class Habitacion implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idHabitacion;
    
    @Basic
    private String Piso;
    private String Nombre;
    private String Tipo;
    private int Precio;

    public Habitacion() {
    }

    public Habitacion(int idHabitacion, String Piso, String Nombre, String Tipo, int Precio) {
        this.idHabitacion = idHabitacion;
        this.Piso = Piso;
        this.Nombre = Nombre;
        this.Tipo = Tipo;
        this.Precio = Precio;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public String getPiso() {
        return Piso;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getTipo() {
        return Tipo;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public void setPiso(String Piso) {
        this.Piso = Piso;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }
}
