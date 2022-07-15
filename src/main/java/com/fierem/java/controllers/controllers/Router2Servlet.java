package com.fierem.java.controllers.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Router2Servlet", urlPatterns="/route2")
public class Router2Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = (String) request.getAttribute("message");
        request.setAttribute("message", m +" top part 2");
        request.getRequestDispatcher("/route3").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "bottom part 2");
        request.getRequestDispatcher("/route3").forward(request, response);
    }

}
