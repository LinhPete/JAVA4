package com.poly.listeners;

import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionListener;

@WebListener
public class AppListener implements ServletContextListener, HttpSessionListener {

}
