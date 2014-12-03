/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.utils;

/**
 *
 * @author David Paucar González DPG
 * @version  1.0
 */
public enum EstadosEnum {
    //Activo
    ACT, 
    //Inactivo
    INA ;

    public String value() {
        return name();
    }

    public static EstadosEnum fromValue(String v) {
        return valueOf(v);
    }
}
