package com.poly.controller.filters;

import com.poly.controller.requestAnalyst.SessionContainer;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebFilter("/*")
public class AppFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        if (req.getSession().getAttribute(SessionContainer.SESSION_KEY) == null) {
            try {
                SessionContainer sessionContainer = new SessionContainer(req);
                sessionContainer.deploy(req);
            } catch (InvocationTargetException | NoSuchMethodException |
                     InstantiationException | IllegalAccessException e) {
               e.printStackTrace();
            }
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
