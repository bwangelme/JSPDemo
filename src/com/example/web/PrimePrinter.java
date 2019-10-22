package com.example.web;

import com.example.model.PrimeCalculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class PrimePrinter extends HttpServlet {

    int m = 0;
    private String message;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrimeCalculator cal = new PrimeCalculator();

        ArrayList<ArrayList<Integer>> result = cal.GetPrimeNumber(100, 10);

        request.setAttribute("primeNumbers", result);

//        RequestDispatcher view = request.getRequestDispatcher("prime-number.jsp");
//        view.forward(request, response);
        PrintWriter out = response.getWriter();
        m++;
        out.println(m);
    }

    @Override
    public void init() throws ServletException {
        message = "Hello World , Nect To Meet You: " + System.currentTimeMillis();
        System.out.println("servlet初始化……" + message);
        super.init();
    }

    @Override
    public void destroy() {
        System.out.println("servlet销毁！");
        super.destroy();
    }
}
