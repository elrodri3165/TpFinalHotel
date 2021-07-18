/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.util.Date;
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
public class ReservaTest {
    
    public ReservaTest() {
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
     * Test of getIdReserva method, of class Reserva.
     */
    @Test
    public void testGetIdReserva() {
        System.out.println("getIdReserva");
        Reserva instance = new Reserva();
        int expResult = 0;
        int result = instance.getIdReserva();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getHabitacion method, of class Reserva.
     */
    @Test
    public void testGetHabitacion() {
        System.out.println("getHabitacion");
        Reserva instance = new Reserva();
        int expResult = 0;
        int result = instance.getHabitacion();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDesde method, of class Reserva.
     */
    @Test
    public void testGetDesde() {
        System.out.println("getDesde");
        Reserva instance = new Reserva();
        Date expResult = null;
        Date result = instance.getDesde();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getHasta method, of class Reserva.
     */
    @Test
    public void testGetHasta() {
        System.out.println("getHasta");
        Reserva instance = new Reserva();
        Date expResult = null;
        Date result = instance.getHasta();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getHabi method, of class Reserva.
     */
    @Test
    public void testGetHabi() {
        System.out.println("getHabi");
        Reserva instance = new Reserva();
        Habitacion expResult = null;
        Habitacion result = instance.getHabi();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdReserva method, of class Reserva.
     */
    @Test
    public void testSetIdReserva() {
        System.out.println("setIdReserva");
        int idReserva = 0;
        Reserva instance = new Reserva();
        instance.setIdReserva(idReserva);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setHabitacion method, of class Reserva.
     */
    @Test
    public void testSetHabitacion() {
        System.out.println("setHabitacion");
        int Habitacion = 0;
        Reserva instance = new Reserva();
        instance.setHabitacion(Habitacion);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDesde method, of class Reserva.
     */
    @Test
    public void testSetDesde() {
        System.out.println("setDesde");
        Date Desde = null;
        Reserva instance = new Reserva();
        instance.setDesde(Desde);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setHasta method, of class Reserva.
     */
    @Test
    public void testSetHasta() {
        System.out.println("setHasta");
        Date Hasta = null;
        Reserva instance = new Reserva();
        instance.setHasta(Hasta);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setHabi method, of class Reserva.
     */
    @Test
    public void testSetHabi() {
        System.out.println("setHabi");
        Habitacion habi = null;
        Reserva instance = new Reserva();
        instance.setHabi(habi);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
