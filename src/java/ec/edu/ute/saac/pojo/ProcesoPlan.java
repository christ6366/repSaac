/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.pojo;

/**
 *
 * @author JNK
 */
public class ProcesoPlan {

    private String id;
    private String tema;
    private String docente_Responsable;

    public ProcesoPlan() {
    }

    public ProcesoPlan(String id, String tema, String docente_Responsable) {
        this.id = id;
        this.tema = tema;
        this.docente_Responsable = docente_Responsable;
    }

    public String getDocente_Responsable() {
        return docente_Responsable;
    }

    public String getId() {
        return id;
    }

    public String getTema() {
        return tema;
    }

    public void setDocente_Responsable(String docente_Responsable) {
        this.docente_Responsable = docente_Responsable;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }
}
