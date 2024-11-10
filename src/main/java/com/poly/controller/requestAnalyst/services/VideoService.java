package com.poly.controller.requestAnalyst.services;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.AdminVideoAttributes;
import com.poly.model.managers.VideoManager;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class VideoService extends Service{
    private AdminVideoAttributes adminVideoAttributes;
    public VideoService(HttpServletRequest request) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        super(request, VideoManager.class);
        adminVideoAttributes = retrieveAttributes();
    }

    @Override
    public void setRequest(HttpServletRequest request) {
        super.setRequest(request);
        adminVideoAttributes = retrieveAttributes();
    }

    private void deployAttributes(){
        adminVideoAttributes.deploy(request);
    }

    private AdminVideoAttributes retrieveAttributes() {
        SessionContainer container = SessionContainer.retrieve(request);
        if(container == null) {
            return null;
        }
        return container.getAttributeContainer().getAdminVideoAttributes();
    }

    public void loadPage(){
//        adminVideoAttributes.setFilterName(null);
//        adminVideoAttributes.setFilterRole(null);
        renderPageMap();
        setCurrentPage(1);
    }

    public void changePage(){
        int pageNumber = Integer.parseInt(request.getPathInfo().substring(1));
        setCurrentPage(pageNumber);
    }

    public void renderPageMap(){
//        String filterName = adminVideoAttributes.getFilterName();
//        Boolean filterRole = adminVideoAttributes.getFilterRole();
//        if(filterName == null && filterRole == null) {
            renderAllPageMap();
//        } else{
//            renderFilteredPageMap(filterName, filterRole);
//        }
    }

    private void renderAllPageMap() {
        adminVideoAttributes.setPageMap(manager.selectAllInPages(5));
        deployAttributes();
    }

//    private void renderFilteredPageMap(String name, Boolean role) {
//        adminVideoAttributes.setPageMap(manager.getFilteredPageMap(5, name, role));
//        deployAttributes();
//    }

    private void setCurrentPage(int pageNumber) {
        if(pageNumber>1 && adminVideoAttributes.getPageMap().get(pageNumber) == null) {
            pageNumber--;
        }
        adminVideoAttributes.setCurrentPageNumber(pageNumber);
        deployAttributes();
    }

    private int getCurrentPageNumber() {
        return adminVideoAttributes.getCurrentPageNumber();
    }
}
