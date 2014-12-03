/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.servicios;

import ec.edu.ute.saac.entidades.Carrera;
import ec.edu.ute.saac.entidades.Facultad;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author JNK
 */
@Stateless
public class CarreraFacade extends AbstractFacade<Carrera> {
    @PersistenceContext(unitName = "saacPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CarreraFacade() {
        super(Carrera.class);
    }
    
    public List<Carrera> obtenerCarreraPorFacultad(Facultad facultad) {
        List<Carrera> result = null;
        Query query = em.createNamedQuery("Carrera.obtenerPorFacultad");
        query.setParameter("facultad", facultad);
        result = query.getResultList();
        return result.isEmpty() || result == null ? null : result;
}
    
}
