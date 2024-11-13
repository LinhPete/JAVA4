package com.poly.controller.requestAnalyst;

import com.poly.controller.requestAnalyst.services.FavoriteService;
import com.poly.controller.requestAnalyst.services.UserService;
import com.poly.controller.requestAnalyst.services.VideoService;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class ServiceContainer {
    private final UserService userService;
    private final FavoriteService favoriteService;
    private final VideoService videoService;

    public ServiceContainer(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        userService = new UserService(request);
        favoriteService = new FavoriteService(request);
        videoService = new VideoService(request);
    }

    public UserService getUserService(HttpServletRequest request) {
        userService.setRequest(request);
        return userService;
    }

    public VideoService getVideoService(HttpServletRequest request) {
        videoService.setRequest(request);
        return videoService;
    }

    public FavoriteService getFavoriteService(HttpServletRequest request) {
        favoriteService.setRequest(request);
        return favoriteService;
    }
}
