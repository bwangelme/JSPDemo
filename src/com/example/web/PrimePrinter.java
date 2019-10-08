package com.example.web;

import com.example.model.PrimeCalculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class PrimePrinter extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrimeCalculator cal = new PrimeCalculator();

        ArrayList<ArrayList<Integer>> result = cal.GetPrimeNumber(100, 10);

        request.setAttribute("primeNumbers", result);

        RequestDispatcher view = request.getRequestDispatcher("prime-number.jsp");
        view.forward(request, response);
    }
}
