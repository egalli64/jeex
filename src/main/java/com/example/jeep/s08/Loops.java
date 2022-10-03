package com.example.jeep.s08;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@SuppressWarnings("serial")
@WebServlet("/s08/loops")
public class Loops extends HttpServlet {
    private static final Logger log = LogManager.getLogger(Loops.class);

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.trace("called");

        List<Person> users = List.of(new Person("Bob", "Ping"), new Person("Tom", "Li"), new Person("Kim", "Mo"));
        request.setAttribute("users", users);

        double[] values = new double[12];
        for (int i = 0; i < values.length; i++) {
            values[i] = Math.random();
        }
        request.setAttribute("values", values);

        String names = "Alma,Benno,Charles,Darla";
        request.setAttribute("names", names);

        request.getRequestDispatcher("loops.jsp").forward(request, response);
    }
}
