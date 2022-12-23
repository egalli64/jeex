/*
 * Introduction to Jakarta Enterprise Edition - JSP
 * 
 * https://github.com/egalli64/jeep
 */
package com.example.jeep.s04;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Generate attributes to be put in the view by JSP Expression Language
 */
@SuppressWarnings("serial")
@WebServlet("/s04/el")
public class ExpressionLanguage extends HttpServlet {
    private static final Logger log = LogManager.getLogger(ExpressionLanguage.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Document doc = new Document("Hello", new User("Tom", 42));
        log.trace(doc);
        request.setAttribute("doc", doc);

        List<String> names = List.of("Tom", "Bob", "Kim");
        request.setAttribute("names", names);

        request.getRequestDispatcher("el.jsp").forward(request, response);
    }
}
