package com.poly.controller.requestAnalyst.services;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.VideoManageAttributes;
import com.poly.model.entities.Video;
import com.poly.model.managers.VideoManager;
import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;

public class VideoService extends Service<VideoManager>{
    private VideoManageAttributes vmAttributes;
    public VideoService(HttpServletRequest request) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        super(request, VideoManager.class);
        vmAttributes = retrieveAttributes();
    }

    @Override
    public void setRequest(HttpServletRequest request) {
        super.setRequest(request);
        vmAttributes = retrieveAttributes();
    }

    private void deployAttributes(){
        vmAttributes.deploy(request);
    }

    private VideoManageAttributes retrieveAttributes() {
        SessionContainer container = SessionContainer.retrieve(request);
        if(container == null) {
            return null;
        }
        return container.getAttributeContainer().getVideoManageAttributes();
    }

    public void loadPage(){
//        adminVideoAttributes.setFilterName(null);
//        adminVideoAttributes.setFilterRole(null);
        renderPageMap();
    }

    public void edit(){
        String id = request.getPathInfo().substring(1);
        setEditingVideo(manager.selectById(id));
    }

    private void setEditingVideo(Video video) {
        vmAttributes.setEditingVideo(video);
        deployAttributes();
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
        vmAttributes.setListVideos(manager.selectAll());
        deployAttributes();
    }

//    private void renderFilteredPageMap(String name, Boolean role) {
//        adminVideoAttributes.setPageMap(manager.getFilteredPageMap(5, name, role));
//        deployAttributes();
//    }

}
