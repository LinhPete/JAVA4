package com.poly.controller.requestAnalyst.sessionAttributes.attributes;

import com.poly.controller.requestAnalyst.sessionAttributes.AttributeContainer;
import com.poly.model.entities.Favorite;
import com.poly.model.entities.User;
import com.poly.model.managers.FavoriteManager;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

public class FavoriteManageAttributes {
    private final AttributeContainer attributeContainer;
    private Map<Integer, List<Favorite>> pageMap;
    private Integer currentPageNumber;
    private List<Favorite> currentPage;
    private String currentUserId;

    public FavoriteManageAttributes(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
        FavoriteManager manager = new FavoriteManager();
        setPageMap(manager.selectAllInPages(5));
        setCurrentPageNumber(1);
        setCurrentUserId(null);
    }

    public void deploy(HttpServletRequest request) {
        attributeContainer.setFavoriteManageAttributes(this);
        attributeContainer.deploy(request);
    }

    public Map<Integer, List<Favorite>> getPageMap() {
        return pageMap;
    }

    public void setPageMap(Map<Integer, List<Favorite>> pageMap) {
        this.pageMap = pageMap;
    }

    public Integer getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(Integer currentPageNumber) {
        this.currentPageNumber = currentPageNumber;
        setCurrentPage(pageMap.get(currentPageNumber));
    }

    public List<Favorite> getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(List<Favorite> currentPage) {
        this.currentPage = currentPage;
    }

    public String getCurrentUserId() {
        return currentUserId;
    }

    public void setCurrentUserId(String currentUserId) {
        this.currentUserId = currentUserId;
    }
}
