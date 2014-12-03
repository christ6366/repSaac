/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.servicios;

import ec.edu.ute.saac.entidades.ComisionInvestigacion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author JNK
 */
@Stateless
public class ComisionInvestigacionFacade extends AbstractFacade<ComisionInvestigacion> {
    @PersistenceContext(unitName = "saacPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComisionInvestigacionFacade() {
        super(ComisionInvestigacion.class);
    }
    
}
