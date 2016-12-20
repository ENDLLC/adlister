package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Duke on 12/19/16.
 */
@WebServlet(name = "DeleteAdServlet", urlPatterns = "/delete")
public class DeleteAdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = DaoFactory.getAdsDao().getAdById(Integer.parseInt(request.getParameter("id")));
        if (request.getSession().getAttribute("user") == null){
            response.sendRedirect("/ads");
            return;
        }
        User user = (User) request.getSession().getAttribute("user");
        if (ad.getUserId() == user.getId())
            DaoFactory.getAdsDao().deleteAd(ad);
        response.sendRedirect("/ads");
    }
}
