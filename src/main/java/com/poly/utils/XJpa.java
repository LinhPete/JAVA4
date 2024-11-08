package com.poly.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class XJpa {
    private final static String persistenceUnitName = "PolyOE";
    private static EntityManagerFactory factory;

    static{setFactory(persistenceUnitName);}

    public static void setFactory(String unitName){
        if(factory == null || !factory.isOpen()){
            factory = Persistence.createEntityManagerFactory(unitName);
        }
    }

    public static void closeFactory(){
        if(factory != null && factory.isOpen()){
            factory.close();
        }
    }

    public static EntityManager getEntityManager(){
        if(factory == null || !factory.isOpen()){
            setFactory(persistenceUnitName);
        }
        return factory.createEntityManager();
    }

}
