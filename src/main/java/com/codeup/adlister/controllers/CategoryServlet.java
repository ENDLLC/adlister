package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Duke on 12/26/16.
 */
@WebServlet(name = "CategoryServlet", urlPatterns = "/category")
public class CategoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        request.setAttribute("ads", DaoFactory.getAdsDao().getAdsByCategory(category));
        request.setAttribute("AdsDao", DaoFactory.getAdsDao());
        request.getSession().setAttribute("categories", DaoFactory.getCategoriesDao().all());
        request.getRequestDispatcher("WEB-INF/ads/index.jsp").forward(request, response);
    }
}
