package com.poly.controller.requestAnalyst.services;

import com.poly.modal.managers.XManager;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class Service<Manager extends XManager> {
    protected HttpServletRequest request;
    protected Manager manager;
    public Service(HttpServletRequest request,Class<Manager> managerClass) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        this.request = request;
        manager = managerClass.getDeclaredConstructor().newInstance();
    }

    protected void setRequest(HttpServletRequest request) {
        this.request = request;
    }
}
