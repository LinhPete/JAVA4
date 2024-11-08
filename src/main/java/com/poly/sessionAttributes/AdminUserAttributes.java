package com.poly.sessionAttributes;

import com.poly.entities.User;
import com.poly.services.UserService;
import jakarta.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AdminUserAttributes {
    private Map<Integer, List<User>> pageMap;
    private Integer currentPageNumber;
    private List<User> currentPage;
    private User editingUser;
    private String filterName;
    private Boolean filterRole;

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
