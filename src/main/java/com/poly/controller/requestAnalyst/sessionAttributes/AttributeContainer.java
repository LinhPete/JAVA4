package com.poly.controller.requestAnalyst.sessionAttributes;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.FavoriteManageAttributes;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.UserManageAttributes;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.VideoManageAttributes;
import jakarta.servlet.http.HttpServletRequest;

public class AttributeContainer {
    private final SessionContainer sessionContainer;
    private UserManageAttributes userManageAttributes;
    private VideoManageAttributes videoManageAttributes;
    private FavoriteManageAttributes favoriteManageAttributes;

    public AttributeContainer(SessionContainer sessionContainer) {
        this.sessionContainer = sessionContainer;
        userManageAttributes = new UserManageAttributes(this);
        videoManageAttributes = new VideoManageAttributes(this);
        favoriteManageAttributes = new FavoriteManageAttributes(this);
    }

    public UserManageAttributes getUserManageAttributes() {
        return userManageAttributes;
    }

    public void setUserManageAttributes(UserManageAttributes userManageAttributes) {
        this.userManageAttributes = userManageAttributes;
    }

    public VideoManageAttributes getVideoManageAttributes() {
        return videoManageAttributes;
    }

    public void setVideoManageAttributes(VideoManageAttributes videoManageAttributes) {
        this.videoManageAttributes = videoManageAttributes;
    }

    public FavoriteManageAttributes getFavoriteManageAttributes() {
        return favoriteManageAttributes;
    }

    public void setFavoriteManageAttributes(FavoriteManageAttributes favoriteManageAttributes) {
        this.favoriteManageAttributes = favoriteManageAttributes;
    }

    public void deploy(HttpServletRequest request) {
        sessionContainer.setAttributeContainer(this);
        sessionContainer.deploy(request);
    }
}
