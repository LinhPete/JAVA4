package com.poly.controller.servlets.client;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/client/home",
        "/client/library",
        "/client/account",
        "/client/changePass",
        "/client/forgetPass",
        "/client/login",
        "/client/register",
        "/client/share",
        "/client/like",
        "/client/video"
})
public class ClientServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();

        if (uri.contains("home")) {
            req.setAttribute("view", "/main/index.jsp");
        } else if (uri.contains("account")) {
            req.setAttribute("view", "/main/updateAccount.jsp");
        } else if (uri.contains("changePass")) {
            req.setAttribute("view", "/main/changePassword.jsp");
        } else if (uri.contains("forgetPass")) {
            req.setAttribute("view", "/main/forgetPassword.jsp");
        } else if (uri.contains("register")) {
            req.setAttribute("view", "/main/register.jsp");
        } else if (uri.contains("login")) {
            req.setAttribute("view", "/main/login.jsp");
        } else if (uri.contains("video")) {
            req.setAttribute("view", "/main/detailVideo.jsp");
        } else if (uri.contains("like")) {
            req.setAttribute("view", "/main/likeVideo.jsp");
        } else if (uri.contains("share")) {
            req.setAttribute("view", "/main/shareVideo.jsp");
        }
        req.getRequestDispatcher("/main/layout.jsp").forward(req, resp);
    }
}
