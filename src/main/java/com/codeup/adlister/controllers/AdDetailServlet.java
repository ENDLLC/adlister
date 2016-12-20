package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdDetailServlet", urlPatterns = "/ads/details")
public class AdDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idToFind = Integer.parseInt(request.getParameter("id"));
        request.getSession().setAttribute("ad", DaoFactory.getAdsDao().getAdById(idToFind));
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);

    }
}
