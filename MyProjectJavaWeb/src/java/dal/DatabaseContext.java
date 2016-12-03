/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author q
 */
/// load image by href
public class DatabaseContext {

    public Connection connection;

    public DatabaseContext() {
        try {
            String username = "prj321";
            String password = "123456";
            String url = "jdbc:sqlserver://localhost;databaseName=Shop";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
        }
    }

    public ArrayList<Cloth> getAllCloth() {
        String sql = "SELECT "
                + "[clothingID]"
                + "      ,[name]"
                + "      ,[gender]"
                + "      ,[path]"
                + "      ,[sizeID]"
                + "      ,[styleID]"
                + "      ,[colorID]"
                + "      ,[meterialID]"
                + "  FROM [dbo].[clothing]";
        ArrayList<Cloth> list = new ArrayList<>();

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int clothID = rs.getInt("clothingID");
                String name = rs.getString("name");
                boolean geder = rs.getBoolean("gender");
                String path = rs.getString("path");
                int sizeID = rs.getInt("sizeID");
                int styleID = rs.getInt("styleID");
                int colorID = rs.getInt("colorID");
                int meterialID = rs.getInt("meterialID");
                //
                Cloth c = new Cloth(clothID, name, geder, path, sizeID, styleID, colorID, meterialID);
                list.add(c);
            }
        } catch (SQLException ex) {
        }
        return list;

    }

}
