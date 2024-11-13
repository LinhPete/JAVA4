package com.poly.controller.requestAnalyst.services;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.FavoriteManageAttributes;
import com.poly.model.entities.Favorite;
import com.poly.model.managers.FavoriteManager;
import com.poly.utils.XMessage;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

public class FavoriteService extends Service<FavoriteManager> {
    private FavoriteManageAttributes fmAttributes;

    public FavoriteService(HttpServletRequest request) throws InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        super(request, FavoriteManager.class);
        fmAttributes = retrieveAttributes();
    }

    public void setRequest(HttpServletRequest request) {
        super.setRequest(request);
        fmAttributes = retrieveAttributes();
    }

    public void loadPage(){
        fmAttributes.setCurrentUserId(null);
        renderPageMap();
        setCurrentPage(1);
    }

    public void changePage(){
        int pageNumber = Integer.parseInt(request.getPathInfo().substring(1));
        setCurrentPage(pageNumber);
    }

    public void filter(){
        String userId = request.getParameter("userId");
        if(userId != null && userId.isBlank()){
            userId = null;
        }
        fmAttributes.setCurrentUserId(userId);
        renderPageMap();
        setCurrentPage(1);
    }

    private void renderPageMap() {
        String currentUserId = fmAttributes.getCurrentUserId();
        if(currentUserId!=null){
            renderWithFilter(currentUserId);
        } else {
            fmAttributes.setPageMap(manager.selectAllInPages(5));
        }
        deployAttributes();
    }

    private void renderWithFilter(String currentUserId){
        List<Favorite> list = manager.getFavoritesByUser(currentUserId);
        if(list==null || list.isEmpty()){
            request.setAttribute("mess",
                    XMessage.generateMessage("danger", "Không tìm thấy dữ liệu !!"));
            fmAttributes.setPageMap(new HashMap<>());
        } else {
            fmAttributes.setPageMap(manager.convertListToPages(list,5));
        }
    }

    private void setCurrentPage(int pageNumber) {
        if(pageNumber>1 && fmAttributes.getPageMap().get(pageNumber) == null) {
            pageNumber--;
        }
        fmAttributes.setCurrentPageNumber(pageNumber);
        deployAttributes();
    }

    private int getCurrentPageNumber() {
        return fmAttributes.getCurrentPageNumber();
    }

    private void setCurrentUserId(String userId) {
        fmAttributes.setCurrentUserId(userId);
        deployAttributes();
    }

    private void deployAttributes(){
        fmAttributes.deploy(request);
    }

    private FavoriteManageAttributes retrieveAttributes() {
        SessionContainer container = SessionContainer.retrieve(request);
        if(container == null) {
            return null;
        }
        return container.getAttributeContainer().getFavoriteManageAttributes();
    }
}
