/*
 * Introduction to Jakarta Enterprise Edition - JSP
 * 
 * https://github.com/egalli64/jeep
 */
package com.example.jeep.s05;

import java.io.IOException;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Enrich the request with an attribute then pass the control to a JSP
 */
@SuppressWarnings("serial")
@WebServlet("/s05/implicit")
public class ImplicitObjects extends HttpServlet {
    private static final Logger log = LogManager.getLogger(ImplicitObjects.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.trace("name: " + request.getParameter("name"));
        log.trace("colors: " + Arrays.toString(request.getParameterValues("colors")));

        request.setAttribute("example", 42);
        request.getRequestDispatcher("implicit.jsp").forward(request, response);
    }
}
