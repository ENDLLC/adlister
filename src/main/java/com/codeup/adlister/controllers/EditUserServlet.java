package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditUserServlet", urlPatterns = "/userEdit")
public class EditUserServlet extends HttpServlet {
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null){
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/editUser.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation))
                || ((DaoFactory.getUsersDao().findByUsername(username) != null)
                    && (DaoFactory.getUsersDao().findByUsername(username).getId() != user.getId()));
        if (inputHasErrors) {
            response.sendRedirect("/profile");
            return;
        }
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        DaoFactory.getUsersDao().update(user);
        response.sendRedirect("/profile");
    }
}
