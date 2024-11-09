package com.poly.controller.servlets.admin;

import com.poly.controller.requestAnalyst.ServiceContainer;
import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.services.UserService;
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
        SessionContainer container = SessionContainer.retrieve(req);
        UserService userService = container.getServiceContainer().getUserService(req);
        String path = req.getServletPath();
        if (path.endsWith("users")) {
            userService.loadPage();
        } else if(path.contains("filter")){
            userService.filter();
        } else if (path.contains("page")) {
            userService.changePage();
        } else if (path.contains("edit")) {
            userService.edit();
        } else if (path.contains("create")) {
            userService.createUser();
        } else if (path.contains("update")) {
            userService.updateUser();
        } else if (path.contains("delete")) {
            userService.deleteUser();
        } else if (path.contains("reset")) {
            userService.resetForm();
        }
        req.setAttribute("view", "/admin/user/user-layout.jsp");
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
