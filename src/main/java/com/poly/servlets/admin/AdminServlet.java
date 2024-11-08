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
    private FavoriteService favoriteService = new FavoriteService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.contains("home")) {
            req.setAttribute("view", "/admin/home.jsp");
        } else if (path.contains("favorites")) {
            favoriteService.handleRequest();
            req.setAttribute("view", "/admin/favorite.jsp");
        }
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
