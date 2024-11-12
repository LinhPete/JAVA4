package com.poly.controller.requestAnalyst.sessionAttributes.attributes;

import com.poly.controller.requestAnalyst.sessionAttributes.AttributeContainer;
import com.poly.model.entities.Video;
import com.poly.model.managers.VideoManager;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

public class AdminVideoAttributes {
    private final AttributeContainer attributeContainer;
    private Map<Integer, List<Video>> pageMap;
    private Integer currentPageNumber;
    private List<Video> currentPage;
    private Video editingVideo;

    public AdminVideoAttributes(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
        VideoManager vm = new VideoManager();
        setPageMap(vm.selectAllInPages(5));
        setCurrentPageNumber(1);
        setEditingVideo(null);
    }

    public void deploy(HttpServletRequest request) {
        attributeContainer.setAdminVideoAttributes(this);
        attributeContainer.deploy(request);
    }

    public Map<Integer, List<Video>> getPageMap() {
        return pageMap;
    }

    public void setPageMap(Map<Integer, List<Video>> pageMap) {
        this.pageMap = pageMap;
    }

    public Integer getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(Integer currentPageNumber) {
        this.currentPageNumber = currentPageNumber;
        setCurrentPage(pageMap.get(currentPageNumber));
    }

    public List<Video> getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(List<Video> currentPage) {
        this.currentPage = currentPage;
    }

    public Video getEditingVideo() {
        return editingVideo;
    }

    public void setEditingVideo(Video editingVideo) {
        this.editingVideo = editingVideo;
    }
}
