/*
 * Introduction to Jakarta Enterprise Edition - JSP
 * 
 * https://github.com/egalli64/jeep
 */
package com.example.jeep.s03;

import java.io.IOException;
import java.util.Set;
import java.util.TreeSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * A servlet that delegates to a JSP the view generation
 * <li>A parameter "user" is expected
 * <li>An attribute "set" is generated
 * <li>The control is passed to the checker JSP in the same folder
 */
@SuppressWarnings("serial")
@WebServlet("/s03/checker")
public class Checker extends HttpServlet {
    private static final Logger log = LogManager.getLogger(Checker.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        log.trace("User is {" + user + "}");

        Set<Character> set = new TreeSet<>();
        if (user != null) {
            for (char c : user.toCharArray()) {
                set.add(Character.toLowerCase(c));
            }
        }
        request.setAttribute("set", set);
        request.getRequestDispatcher("checker.jsp").forward(request, response);
    }
}
