package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void update(User user);
    void resetPassword(User user);
    void deleteUser(User user);
}
