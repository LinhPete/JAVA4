package com.poly.modal.managers;

import com.poly.modal.entities.Video;

public class VideoManager extends XManager<Video>{

    public VideoManager() {
        super(Video.class);
    }

    public static void main(String[] args) {
        VideoManager videoManager = new VideoManager();
        videoManager.selectAll();
    }
}
