/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.utils;

/**
 *
 * @author Oscar David Cabrera Ballesteros
 * @version  1.0
 */
public enum EstadosProcesoEnum {
    //Planificación
    PLA,
    //Ejecución
    EJE,
    //Medición
    MDC,
    //Consolidación
    CON,
    //Finalizado
    FIN;
  
    public String value() {
        return name();
    }

    public static EstadosProcesoEnum fromValue(String v) {
        return valueOf(v);
    }
}
