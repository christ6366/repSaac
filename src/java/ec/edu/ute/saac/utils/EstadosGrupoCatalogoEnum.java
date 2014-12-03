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
public enum EstadosGrupoCatalogoEnum {
    //CODIGO REGIMEN LABORAL SEGUN EL MINISTERIO DE FINANZAS
    CODIGO_MF_SERVIDORES_CARRERA;
     
    public String value() {
        return name();
    }

    public static EstadosGrupoCatalogoEnum fromValue(String v) {
        return valueOf(v);
    }
}
