package com.poly.servlets.admin;

import com.poly.entities.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/admin/users", "/admin/users/page/*", "/admin/users/edit/*",
            "/admin/users/create", "/admin/users/update", "/admin/users/delete",
            "/admin/users/reset","/admin/users/filter"})
public class UserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.endsWith("users")) {

        } else if(path.contains("filter")){

        } else if (path.contains("page")) {

        } else if (path.contains("edit")) {

        } else if (path.contains("create")) {

        } else if (path.contains("update")) {

        } else if (path.contains("delete")) {

        } else if (path.contains("reset")) {

        }
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
