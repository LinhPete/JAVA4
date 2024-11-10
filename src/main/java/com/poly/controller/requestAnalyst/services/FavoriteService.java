package com.poly.controller.requestAnalyst.services;

import com.poly.model.managers.FavoriteManager;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class FavoriteService extends Service<FavoriteManager> {
    private String path;
    public FavoriteService(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        super(request, FavoriteManager.class);
        this.request = request;
        path = request.getServletPath();
    }

    private void renderFavorites() {

    }

    public void handleRequest() {

    }
}
