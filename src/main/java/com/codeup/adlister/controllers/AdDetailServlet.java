package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Duke on 12/19/16.
 */
@WebServlet(name = "AdDetailServlet", urlPatterns = "/ads/details")
public class AdDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("ad",
                DaoFactory.getAdsDao().getAdById(Integer.parseInt(request.getParameter("id"))));
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);

    }
}
