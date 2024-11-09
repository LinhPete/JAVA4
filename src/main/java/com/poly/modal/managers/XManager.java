package com.poly.modal.managers;

import com.poly.utils.XJpa;
import com.poly.utils.interfaces.TransactionOperation;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class XManager<T> {
    private final Class<T> entityClass;

    public XManager(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    public List<T> selectAll() {
        String jpql = "SELECT o FROM " + entityClass.getSimpleName() + " o";
        return getByCustomQuery(jpql);
    }

    public List<T> selectByRange(int start, int size) {
        List<T> list = null;

        // Sử dụng try-with-resources để tự động đóng EntityManager
        try (EntityManager em = XJpa.getEntityManager()) {
            String jpql = "SELECT o FROM " + entityClass.getSimpleName() + " o";
            TypedQuery<T> query = em.createQuery(jpql, entityClass);
            injectRange(query, start, size);
            list = query.getResultList();
        } catch (Exception e) {
            // Xử lý lỗi (có thể ném lại hoặc log)
            System.err.println("Error while fetching data: " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    protected Map<Integer, List<T>> convertListToPages(List<T> list, int size) {
        Map<Integer, List<T>> map = new HashMap<>();
        int page = 1;
        for (int i = 0; i < list.size(); i += size) {
            int end = Math.min(i + size, list.size());
            map.put(page, new ArrayList<>(list.subList(i, end)));
            page++;
        }
        return map;
    }

    public Map<Integer, List<T>> selectAllInPages(int size) {
        return convertListToPages(selectAll(), size);
    }

    public long getDataCount() {
        try (EntityManager em = XJpa.getEntityManager();) {
            String jpql = "SELECT count(o) FROM " + entityClass.getSimpleName() + " o";
            TypedQuery<Long> query = em.createQuery(jpql, Long.class);
            return query.getSingleResult();
        }
    }

    protected void injectRange(TypedQuery<T> query, int start, int size) {
        query.setFirstResult(start * size);
        query.setMaxResults(size);
    }

    public List<T> selectByCol(String column, Object value) {
        String jpql = "SELECT o FROM " + entityClass.getSimpleName() + " o WHERE o." + column.trim() + " = :value";
        return getByCustomQuery(jpql, value);
    }

    public T selectById(Object id) {
        if (id == null) {
            try {
                throw new IllegalArgumentException("Id value is null");
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                return null;
            }
        }
        try (EntityManager em = XJpa.getEntityManager();) {
            return em.find(entityClass, id);
        }
    }

    public T insert(T entity) {
        return IUD(entity, em -> {
            em.persist(entity);
            em.flush();
            em.refresh(entity);
            return entity;
        });
    }

    public T update(T entity) {
        return IUD(entity, em -> {
            T managedEntity = em.merge(entity);
            em.flush();
            return managedEntity;
        });
    }

    public T delete(Object id) {
        T entity = selectById(id);
        return IUD(entity, em -> {
            T managedEntity = em.merge(entity);
            em.remove(managedEntity);
            em.flush();
            return managedEntity;
        });
    }

    protected T IUD(T entity, TransactionOperation<T> operation){
        if (entity == null) {
            try {
                throw new IllegalArgumentException("Entity is null");
            } catch (IllegalArgumentException e) {
                System.err.println(e.getMessage());
                e.printStackTrace();
                return null;
            }
        }

        EntityManager em = XJpa.getEntityManager();

        try {
            em.getTransaction().begin();
            entity = operation.apply(em);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            // Ghi log lỗi ở đây
            System.err.println("Error while updating: " + e.getMessage());
            e.printStackTrace();
            return null;
        } finally {
            em.close();
        }
    }

    protected List<T> getByCustomQuery(String jpql, Object... parameters) {
        try (EntityManager em = XJpa.getEntityManager()) {
            TypedQuery<T> query = em.createQuery(jpql, entityClass);
            for (int i = 0; i < parameters.length; i++) {
                query.setParameter(i + 1, parameters[i]);
            }
            return query.getResultList();
        } catch (Exception e) {// Xử lý lỗi
            System.err.println("Error while fetching data: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    protected List<T> getByNamedQuery(String namedQuery, Object... parameters) {
        try (EntityManager em = XJpa.getEntityManager()) {
            TypedQuery<T> query = em.createNamedQuery(namedQuery, entityClass);
            for (int i = 0; i < parameters.length; i++) {
                query.setParameter(i + 1, parameters[i]);
            }
            return query.getResultList();
        } catch (Exception e) {// Xử lý lỗi
            System.err.println("Error while fetching data: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
}
