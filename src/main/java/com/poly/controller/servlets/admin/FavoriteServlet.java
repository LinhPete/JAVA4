package com.poly.controller.servlets.admin;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.services.FavoriteService;
import com.poly.controller.requestAnalyst.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/admin/favorites", "/admin/favorites/page/*", "/admin/favorites/filter"})
public class FavoriteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SessionContainer container = SessionContainer.retrieve(req);
        FavoriteService favoriteService = container.getServiceContainer().getFavoriteService(req);
        String path = req.getServletPath();
        if(path.endsWith("favorites")){
            favoriteService.loadPage();
        } else if(path.contains("page")){
            favoriteService.changePage();
        } else if(path.contains("filter")){
            favoriteService.filter();
        }
        req.setAttribute("view", "/admin/favorite.jsp");
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
