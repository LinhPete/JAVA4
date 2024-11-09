package com.poly.controller.servlets.client;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/client/index","/client/library","/client/account","/client/changepass","/client/forgetpass","/client/login","/client/register","/client/share","/client/like"})
public class ClientServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/main/index.jsp").forward(req, resp);
    }
}
