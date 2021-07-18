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
public class EmpleadoTest {
    
    public EmpleadoTest() {
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
     * Test of getIdEmpleado method, of class Empleado.
     */
    @Test
    public void testGetIdEmpleado() {
        System.out.println("getIdEmpleado");
        Empleado instance = new Empleado();
        int expResult = 0;
        int result = instance.getIdEmpleado();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNombre method, of class Empleado.
     */
    @Test
    public void testGetNombre() {
        System.out.println("getNombre");
        Empleado instance = new Empleado();
        String expResult = "";
        String result = instance.getNombre();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getApellido method, of class Empleado.
     */
    @Test
    public void testGetApellido() {
        System.out.println("getApellido");
        Empleado instance = new Empleado();
        String expResult = "";
        String result = instance.getApellido();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getEmail method, of class Empleado.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail");
        Empleado instance = new Empleado();
        String expResult = "";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUsuario method, of class Empleado.
     */
    @Test
    public void testGetUsuario() {
        System.out.println("getUsuario");
        Empleado instance = new Empleado();
        String expResult = "";
        String result = instance.getUsuario();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getContraseña method, of class Empleado.
     */
    @Test
    public void testGetContraseña() {
        System.out.println("getContrase\u00f1a");
        Empleado instance = new Empleado();
        String expResult = "";
        String result = instance.getContraseña();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdEmpleado method, of class Empleado.
     */
    @Test
    public void testSetIdEmpleado() {
        System.out.println("setIdEmpleado");
        int idEmpleado = 0;
        Empleado instance = new Empleado();
        instance.setIdEmpleado(idEmpleado);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNombre method, of class Empleado.
     */
    @Test
    public void testSetNombre() {
        System.out.println("setNombre");
        String Nombre = "";
        Empleado instance = new Empleado();
        instance.setNombre(Nombre);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setApellido method, of class Empleado.
     */
    @Test
    public void testSetApellido() {
        System.out.println("setApellido");
        String Apellido = "";
        Empleado instance = new Empleado();
        instance.setApellido(Apellido);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setEmail method, of class Empleado.
     */
    @Test
    public void testSetEmail() {
        System.out.println("setEmail");
        String Email = "";
        Empleado instance = new Empleado();
        instance.setEmail(Email);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUsuario method, of class Empleado.
     */
    @Test
    public void testSetUsuario() {
        System.out.println("setUsuario");
        String Usuario = "";
        Empleado instance = new Empleado();
        instance.setUsuario(Usuario);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setContraseña method, of class Empleado.
     */
    @Test
    public void testSetContraseña() {
        System.out.println("setContrase\u00f1a");
        String Contraseña = "";
        Empleado instance = new Empleado();
        instance.setContraseña(Contraseña);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
