package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Duke on 12/20/16.
 */
@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = (Ad) request.getSession().getAttribute("ad");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        DaoFactory.getAdsDao().updateAd(ad, title, description);
        response.sendRedirect("/ads");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = DaoFactory.getAdsDao().getAdById(Integer.parseInt(request.getParameter("id")));
        if (request.getSession().getAttribute("user") == null){
            response.sendRedirect("/ads");
            return;
        }
        User user = (User) request.getSession().getAttribute("user");
        if (ad.getUserId() == user.getId()) {
            request.getSession().setAttribute("ad", DaoFactory.getAdsDao().getAdById(Integer.parseInt(request.getParameter("id"))));
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
        }
    }
}
