package com.poly.servlets.admin;

import com.poly.services.FavoriteService;
import com.poly.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/admin/home",

        "/admin/favorites"})
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService;
    private FavoriteService favoriteService;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        initServices(req);
        String path = req.getServletPath();
        if (path.contains("home")) {
            req.setAttribute("view", "/admin/home.jsp");
        } else if (path.contains("users")) {
            userService.handleAdminRequest();
            req.setAttribute("view", "/admin/user/user-layout.jsp");
        } else if (path.contains("favorites")) {
            favoriteService.handleRequest();
            req.setAttribute("view", "/admin/favorite.jsp");
        }
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }

    private void initServices(HttpServletRequest req) {
        userService = new UserService(req);
        favoriteService =  new FavoriteService(req);
    }
}
