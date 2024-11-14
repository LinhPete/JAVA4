package com.poly.controller.requestAnalyst.sessionAttributes.attributes;

import com.poly.controller.requestAnalyst.sessionAttributes.AttributeContainer;
import com.poly.model.entities.Video;
import com.poly.model.managers.VideoManager;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

public class VideoManageAttributes {
    private final AttributeContainer attributeContainer;
    private List<Video> listVideos;
    private Video editingVideo;

    public VideoManageAttributes(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
        VideoManager vm = new VideoManager();
        setListVideos(vm.selectAll());
        setEditingVideo(null);
    }

    public void deploy(HttpServletRequest request) {
        attributeContainer.setVideoManageAttributes(this);
        attributeContainer.deploy(request);
    }

    public List<Video> getListVideos() {
        return listVideos;
    }

    public void setListVideos(List<Video> listVideos) {
        this.listVideos = listVideos;
    }

    public Video getEditingVideo() {
        return editingVideo;
    }

    public void setEditingVideo(Video editingVideo) {
        this.editingVideo = editingVideo;
    }
}
