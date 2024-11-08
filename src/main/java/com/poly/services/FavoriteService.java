package com.poly.services;

import com.poly.entities.Favorite;
import com.poly.managers.FavoriteManager;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public class FavoriteService{
    private HttpServletRequest request;
    private FavoriteManager fm;
    private List<Favorite> favorites;
    private String path;

    public FavoriteService(HttpServletRequest request){
        this.request = request;
        path = request.getServletPath();
        fm = new FavoriteManager();
        favorites = (List<Favorite>) request.getSession().getAttribute("favorites");
        if(favorites == null){
            renderFavorites();
        }
    }

    public FavoriteService() {
    }

    private void renderFavorites() {
        if(path.startsWith("/admin")){
            favorites = fm.selectAll();
        }

        request.getSession().setAttribute("favorites", favorites);
    }

    public void handleRequest() {

    }
}
