package com.poly.controller.requestAnalyst;

import com.poly.controller.requestAnalyst.sessionAttributes.AttributeContainer;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class SessionContainer {
    public static final String SESSION_KEY = "session_container";
    private ServiceContainer serviceContainer;
    private AttributeContainer attributeContainer;

    public SessionContainer(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        serviceContainer = new ServiceContainer(request);
        attributeContainer = new AttributeContainer(this);
    }

    public void setServiceContainer(ServiceContainer serviceContainer) {
        this.serviceContainer = serviceContainer;
    }

    public ServiceContainer getServiceContainer() {
        return serviceContainer;
    }

    public void setAttributeContainer(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
    }

    public AttributeContainer getAttributeContainer() {
        return attributeContainer;
    }

    public void deploy(HttpServletRequest request){
        request.getSession().setAttribute(SESSION_KEY, this);
    }

    public static SessionContainer retrieve(HttpServletRequest request){
        return (SessionContainer)request.getSession().getAttribute(SESSION_KEY);
    }
}
