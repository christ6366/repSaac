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
public enum EstadosMedicionEnum {
  //Abierto
    ABI,
 //En elaboración
   ELA,
 //Metas completas  
 COM,
//Medido
 MED,
 //Anulado
 ANU,
 //Aprobado
 APR;

  
    public String value() {
        return name();
    }

    public static EstadosMedicionEnum fromValue(String v) {
        return valueOf(v);
    }
}
