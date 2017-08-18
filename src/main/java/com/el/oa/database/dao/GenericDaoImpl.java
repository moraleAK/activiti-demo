package com.el.oa.database.dao;

import com.el.oa.exception.DaoException;
import org.apache.log4j.spi.ErrorCode;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * User: Rolandz
 * Date: 5/27/16
 * Time: 3:40 PM
 */
public abstract class GenericDaoImpl<T, KeyType> implements GenericDao<T, KeyType> {
    @PersistenceContext
    private EntityManager em;

    public EntityManager getEntityManager() {
        return em;
    }

    public T load(final KeyType id) {
        return em.find(getDomainClass(), id);
    }

    protected abstract Class<T> getDomainClass();

    public void persist(final T t) {
        em.persist(t);
    }

    public T merge(final T t) {
        return em.merge(t);
    }


    public void remove(T t) {
        em.remove(t);
    }

    public TypedQuery<T> query(final String ql, final Object... args) {
        TypedQuery<T> q = em.createQuery(ql, getDomainClass());

        for (int n = 1; n <= args.length; n++) {
            q.setParameter(n, args[n - 1]);
        }
        return q;
    }

    public <E> TypedQuery<E> queryGeneral(final String ql, final Class<E> clazz, final Object... args) {
        TypedQuery<E> q = em.createQuery(ql, clazz);

        for (int n = 1; n <= args.length; n++) {
            q.setParameter(n, args[n - 1]);
        }
        return q;
    }


    public TypedQuery<T> query(final String ql) {
        return em.createQuery(ql, getDomainClass());
    }


    public List<T> getResultList(TypedQuery<T> q, int errorCode) {
        try {
            return q.getResultList();
        } catch (Throwable t) {
           // throw new DaoException(t, ErrorCode.ADDRESS_PARSE_FAILURE, t.getMessage());
            return null;
        }
    }
}