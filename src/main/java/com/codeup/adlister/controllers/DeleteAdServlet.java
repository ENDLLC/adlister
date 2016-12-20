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

@WebServlet(name = "DeleteAdServlet", urlPatterns = "/delete")
public class DeleteAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().getAdById(id);
        User user = (User) request.getSession().getAttribute("user");
        if (user == null){
            response.sendRedirect("/ads");
            return;
        }
        if (ad.getUserId() == user.getId())
            DaoFactory.getAdsDao().deleteAd(ad);
        response.sendRedirect("/ads");
    }
}
