package com.poly.controller.servlets.admin;

import com.poly.controller.requestAnalyst.services.FavoriteService;
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

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.contains("home")) {
            req.setAttribute("view", "/admin/home.jsp");
        } else if (path.contains("favorites")) {
            req.setAttribute("view", "/admin/favorite.jsp");
        }
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
