package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Duke on 12/26/16.
 */
public class MySQLCategoriesDao implements Categories{
    private Connection connection;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the databases.", e);
        }
    }


    @Override
    public List<String> all() {
        try {
            List<String> categories = new ArrayList<>();
            PreparedStatement stmt = connection.prepareStatement("SELECT category FROM categories");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                categories.add(rs.getString("category"));
            }
            return categories;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the categories", e);
        }
    }

    @Override
    public List<String> getAdCategories(Ad ad) {
        try {
            List<String> adCategories = new ArrayList<>();
            String categoryQuery = "SELECT category FROM categories AS c " +
                    "JOIN ads_categories as ac " +
                    "ON ac.category_id = c.id " +
                    "WHERE ac.ad_id = " + ad.getId();
            PreparedStatement stmt = connection.prepareStatement(categoryQuery);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                adCategories.add(rs.getString("category"));
            }
            return adCategories;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving categories from ad", e);
        }
    }

    @Override
    public void linkCategories(long id, String[] categories) {
        try {
            String linkQuery = "INSERT INTO ads_categories(ad_id, category_id) " +
                    "VALUES (" + id + ", ?)";
            PreparedStatement stmt = connection.prepareStatement(linkQuery);
            for (String category: categories
                 ) {
                stmt.setString(1, String.valueOf(getCategoryId(category)));
                stmt.execute();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error attaching categories in database", e);
        }
    }

    private int getCategoryId(String categoryToGet) {
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT id FROM categories " +
                    "WHERE category = '" + categoryToGet +"'");
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return rs.getInt("id");
        } catch (SQLException e) {
            throw new RuntimeException("Error getting category id", e);
        }
    }
}
