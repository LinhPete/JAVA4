package com.poly.managers;

import com.poly.entities.Favorite;
import com.poly.entities.User;

import java.util.Date;

public class FavoriteManager extends XManager<Favorite> {

    public FavoriteManager() {
        super(Favorite.class);
    }

}
