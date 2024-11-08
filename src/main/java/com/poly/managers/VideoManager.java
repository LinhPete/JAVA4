package com.poly.managers;

import com.poly.entities.Video;

import java.util.Date;

public class VideoManager extends XManager<Video>{

    public VideoManager() {
        super(Video.class);
    }

    public static void main(String[] args) {
        VideoManager videoManager = new VideoManager();
        videoManager.selectAll();
    }
}
