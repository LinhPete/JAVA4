package com.poly.controller.servlets.admin;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.services.UserService;
import com.poly.controller.requestAnalyst.services.VideoService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/admin/videos", "/admin/videos/edit/*", "/admin/videos/blank",
        "/admin/videos/create", "/admin/videos/update", "/admin/videos/delete",
        "/admin/videos/reset","/admin/videos/filter"})
public class VideoServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SessionContainer container = SessionContainer.retrieve(req);
        VideoService videoService = container.getServiceContainer().getVideoService(req);
        String path = req.getServletPath();
        if (path.endsWith("videos")) {
            videoService.loadPage();
            req.setAttribute("view", "/admin/video/video-list.jsp");
        } else if(path.contains("filter")){

        } else if (path.contains("blank")){
            req.setAttribute("view", "/admin/video/video-form.jsp");
        } else if (path.contains("edit")) {
            videoService.edit();
            req.setAttribute("view", "/admin/video/video-form.jsp");
        } else if (path.contains("create")) {

        } else if (path.contains("update")) {

        } else if (path.contains("delete")) {

        } else if (path.contains("reset")) {

        }
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
