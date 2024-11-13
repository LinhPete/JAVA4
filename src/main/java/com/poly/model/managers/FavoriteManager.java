package com.poly.model.managers;

import com.poly.model.entities.Favorite;

import java.util.List;

public class FavoriteManager extends XManager<Favorite> {

    public FavoriteManager() {
        super(Favorite.class);
    }

    public List<Favorite> getFavoritesByUser(String userId) {
        return getByNamedQuery("Favorite.getByUser", userId);
    }

}
