package com.poly.controller.requestAnalyst;

import com.poly.controller.requestAnalyst.services.FavoriteService;
import com.poly.controller.requestAnalyst.services.UserService;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class ServiceContainer {
    private final UserService userService;
    private final FavoriteService favoriteService;

    public ServiceContainer(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
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
