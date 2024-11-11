package com.poly.controller.requestAnalyst.sessionAttributes.attributes;

import com.poly.controller.requestAnalyst.sessionAttributes.AttributeContainer;
import com.poly.model.entities.User;
import com.poly.model.managers.UserManager;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

public class AdminUserAttributes {
    private final AttributeContainer attributeContainer;
    private Map<Integer, List<User>> pageMap;
    private Integer currentPageNumber;
    private List<User> currentPage;
    private User editingUser;
    private String filterName;
    private Boolean filterRole;

    public AdminUserAttributes(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
        UserManager userManager = new UserManager();
        setPageMap(userManager.selectAllInPages(5));
        setCurrentPageNumber(1);
        setEditingUser(null);
        setFilterName(null);
        setFilterRole(null);
    }

    public void deploy(HttpServletRequest request) {
        attributeContainer.setAdminUserAttributes(this);
        attributeContainer.deploy(request);
    }

    public Map<Integer, List<User>> getPageMap() {
        return pageMap;
    }

    public void setPageMap(Map<Integer, List<User>> pageMap) {
        this.pageMap = pageMap;
    }

    public Integer getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(Integer currentPageNumber) {
        this.currentPageNumber = currentPageNumber;
        setCurrentPage(pageMap.get(currentPageNumber));
    }

    public List<User> getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(List<User> currentPage) {
        this.currentPage = currentPage;
    }

    public User getEditingUser() {
        return editingUser;
    }

    public void setEditingUser(User editingUser) {
        this.editingUser = editingUser;
    }

    public String getFilterName() {
        return filterName;
    }

    public void setFilterName(String filterName) {
        this.filterName = filterName;
    }

    public Boolean getFilterRole() {
        return filterRole;
    }

    public void setFilterRole(Boolean filterRole) {
        this.filterRole = filterRole;
    }
}
