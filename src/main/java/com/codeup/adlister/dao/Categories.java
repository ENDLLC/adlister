package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

/**
 * Created by Duke on 12/26/16.
 */
public interface Categories {
    List<String> all();
    List<String> getAdCategories(Ad ad);
}
