package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import java.util.List;

public interface Ads {
    List<Ad> all();
    Long insert(Ad ad);
    List<Ad> allByUser(User user);
    String getEmail(Ad ad);
    Ad getAdById(int idToFind);
    void deleteAd(Ad ad);
    void updateAd(Ad ad);
    List<Ad> getAdsByTerm(String search);
}
