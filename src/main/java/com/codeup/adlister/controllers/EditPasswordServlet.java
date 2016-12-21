package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Duke on 12/21/16.
 */
@WebServlet(name = "EditPasswordServlet", urlPatterns = "/password")
public class EditPasswordServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null){
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/editUser.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        boolean inputHasErrors = password.isEmpty() || (! password.equals(passwordConfirmation));
        if (inputHasErrors) {
            response.sendRedirect("/profile");
            return;
        }
        user.setPassword(password);
        DaoFactory.getUsersDao().resetPassword(user);
        response.sendRedirect("/profile");
    }
}
