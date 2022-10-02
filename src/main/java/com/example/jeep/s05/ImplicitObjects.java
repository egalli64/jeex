package com.example.jeep.s05;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

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
