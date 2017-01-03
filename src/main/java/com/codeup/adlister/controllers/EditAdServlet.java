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

@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().getAdById(id);
        User user = (User) request.getSession().getAttribute("user");
        if (user == null){
            response.sendRedirect("/ads");
            return;
        }
        if (ad.getUserId() == user.getId()) {
            request.getSession().setAttribute("ad", ad);
            request.getSession().setAttribute("categories", DaoFactory.getCategoriesDao().all());
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = (Ad) request.getSession().getAttribute("ad");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        ad.setTitle(title);
        ad.setDescription(description);
        DaoFactory.getAdsDao().updateAd(ad);
        DaoFactory.getCategoriesDao().linkCategories(ad.getId(), request.getParameterValues("category[]"));
        response.sendRedirect("/ads");
    }
}
