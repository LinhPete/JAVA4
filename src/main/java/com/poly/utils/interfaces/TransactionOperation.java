package com.poly.utils.interfaces;

import jakarta.persistence.EntityManager;

@FunctionalInterface
public interface TransactionOperation<T> {
    T apply(EntityManager em);
}
