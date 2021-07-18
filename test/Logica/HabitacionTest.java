/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Rodrigo Gallo
 */
public class HabitacionTest {
    
    public HabitacionTest() {
    }
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
    }
    
    @AfterEach
    public void tearDown() {
    }

    /**
     * Test of getIdHabitacion method, of class Habitacion.
     */
    @Test
    public void testGetIdHabitacion() {
        System.out.println("getIdHabitacion");
        Habitacion instance = new Habitacion();
        int expResult = 0;
        int result = instance.getIdHabitacion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPiso method, of class Habitacion.
     */
    @Test
    public void testGetPiso() {
        System.out.println("getPiso");
        Habitacion instance = new Habitacion();
        String expResult = "";
        String result = instance.getPiso();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombre method, of class Habitacion.
     */
    @Test
    public void testGetNombre() {
        System.out.println("getNombre");
        Habitacion instance = new Habitacion();
        String expResult = "";
        String result = instance.getNombre();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTipo method, of class Habitacion.
     */
    @Test
    public void testGetTipo() {
        System.out.println("getTipo");
        Habitacion instance = new Habitacion();
        String expResult = "";
        String result = instance.getTipo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPrecio method, of class Habitacion.
     */
    @Test
    public void testGetPrecio() {
        System.out.println("getPrecio");
        Habitacion instance = new Habitacion();
        int expResult = 0;
        int result = instance.getPrecio();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdHabitacion method, of class Habitacion.
     */
    @Test
    public void testSetIdHabitacion() {
        System.out.println("setIdHabitacion");
        int idHabitacion = 0;
        Habitacion instance = new Habitacion();
        instance.setIdHabitacion(idHabitacion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPiso method, of class Habitacion.
     */
    @Test
    public void testSetPiso() {
        System.out.println("setPiso");
        String Piso = "";
        Habitacion instance = new Habitacion();
        instance.setPiso(Piso);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombre method, of class Habitacion.
     */
    @Test
    public void testSetNombre() {
        System.out.println("setNombre");
        String Nombre = "";
        Habitacion instance = new Habitacion();
        instance.setNombre(Nombre);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTipo method, of class Habitacion.
     */
    @Test
    public void testSetTipo() {
        System.out.println("setTipo");
        String Tipo = "";
        Habitacion instance = new Habitacion();
        instance.setTipo(Tipo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPrecio method, of class Habitacion.
     */
    @Test
    public void testSetPrecio() {
        System.out.println("setPrecio");
        int Precio = 0;
        Habitacion instance = new Habitacion();
        instance.setPrecio(Precio);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
