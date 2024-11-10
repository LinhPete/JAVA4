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
        "/client/changepass",
        "/client/forgetpass",
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

        if (uri.contains("video")){
            req.setAttribute("view", "/main/detailVideo.jsp");
        } else if (uri.contains("home")) {
            req.setAttribute("view", "/main/index.jsp");
        }
        req.getRequestDispatcher("/main/layout.jsp").forward(req, resp);
    }
}
