/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.servicios;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;

/**
 *
 * @author JNK
 */
public abstract class AbstractFacade<T> {

    private Class<T> entityClass;

    @SuppressWarnings("unchecked")
    public AbstractFacade(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @SuppressWarnings("unchecked")
    protected abstract EntityManager getEntityManager();

    @SuppressWarnings("unchecked")
    public void create(T entity) {
        getEntityManager().persist(entity);
    }

    @SuppressWarnings("unchecked")
    public void edit(T entity) {
        getEntityManager().merge(entity);
    }

    @SuppressWarnings("unchecked")
    public void remove(T entity) {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    @SuppressWarnings("unchecked")
    public T find(Object id) {
        return getEntityManager().find(entityClass, id);
    }

    @SuppressWarnings("unchecked")
    public List<T> findAll() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
//        cq.select(cq.from(entityClass)).where(Predicate predicate = getEntityManager().getCriteriaBuilder().ge(from.get("pint"), arg1));
        cq.select(cq.from(entityClass));
        return getEntityManager().createQuery(cq).getResultList();
    }

    @SuppressWarnings("unchecked")
    public List<T> findRange(int[] range) {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    @SuppressWarnings("unchecked")
    public int count() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        javax.persistence.criteria.Root<T> rt = cq.from(entityClass);
        cq.select(getEntityManager().getCriteriaBuilder().count(rt));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }
}
