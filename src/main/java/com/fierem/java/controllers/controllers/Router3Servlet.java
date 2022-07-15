package com.fierem.java.controllers.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Router3Servlet", urlPatterns="/route3")
public class Router3Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = (String) request.getAttribute("message");
        m += "upper part 3";
//        request.getRequestDispatcher("/route3").forward(request, response);
        System.out.println(m);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = (String) request.getAttribute("message");
        m += "bottom part 3";
//        request.getRequestDispatcher("/route3").forward(request, response);
        System.out.println(m);
    }

}
