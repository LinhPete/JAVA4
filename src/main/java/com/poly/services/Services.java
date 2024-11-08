package com.poly.services;

import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class Services {
    private UserService userService;
    private FavoriteService favoriteService;

    public Services(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        userService = new UserService(request);
        favoriteService = new FavoriteService(request);
    }

    public UserService getUserService(HttpServletRequest request) {
        userService.setRequest(request);
        return userService;
    }

    public FavoriteService getFavoriteService(HttpServletRequest request) {

        return favoriteService;
    }
}
