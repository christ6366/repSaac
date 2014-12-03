/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.servicios;

import ec.edu.ute.saac.entidades.Catalogo;
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
public class CatalogoFacade extends AbstractFacade<Catalogo> {

    @PersistenceContext(unitName = "saacPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CatalogoFacade() {
        super(Catalogo.class);
    }

    public List<Catalogo> obtenerCatalogoEstadoCivil() {
        List<Catalogo> result;
        Query query = em.createNamedQuery("Catalogo.recuperarEstadoCivil");
        result = query.getResultList();
        return result.isEmpty() || result == null ? null : result;
    }

    public List<Catalogo> obtenerCatalogoGenero() {
        List<Catalogo> result;
        Query query = em.createNamedQuery("Catalogo.recuperarGenero");
        result = query.getResultList();
        return result.isEmpty() || result == null ? null : result;
    }

    public List<Catalogo> obtenerCatalogoNacionalidades() {
        List<Catalogo> result;
        Query query = em.createNamedQuery("Catalogo.recuperarNacionalidades");
        result = query.getResultList();
        return result.isEmpty() || result == null ? null : result;
    }
}
