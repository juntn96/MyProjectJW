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
import java.util.HashMap;
import java.util.Map;
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
    // test ok : SearchByFilter
    public ArrayList<Cloth> SearchByFilter(String name, Boolean gender, 
            Integer sizeID, Integer styleID, Integer colorID, Integer meterialID) {
        ArrayList<Cloth> searchList = new ArrayList<>();

        String sql = "SELECT "
                +" clothingID"
                + "      ,[name]"
                + "      ,[gender]"
                + "      ,[path]"
                + "      ,[sizeID]"
                + "      ,[styleID]"
                + "      ,[colorID]"
                + "      ,[meterialID]"
                + "  FROM [dbo].[clothing]"
                + " WHERE 1=1 ";

        int paramIndex = 0;
        HashMap<Integer, Object[]> params = new HashMap();

        if (name != null) {
            paramIndex++;
            sql += " AND name = ? ";
            Object[] value = {"STRING", name};
            params.put(paramIndex, value);

        }
        if (gender != null) {
            paramIndex++;
            sql += " AND gender = ? ";
            Object[] value = {"BOOLEAN", gender};
            params.put(paramIndex, value);

        }
        if (sizeID != null) {
            paramIndex++;
            sql += " AND sizeID = ? ";
            Object[] value = {"INT", sizeID};
            params.put(paramIndex, value);

        }
        if (styleID != null) {
            paramIndex++;
            sql += " AND styleID = ? ";
            Object[] value = {"INT", styleID};
            params.put(paramIndex, value);
        }
        if (colorID != null) {
            paramIndex++;
            sql += " AND colorID = ? ";
            Object[] value = {"INT", colorID};
            params.put(paramIndex, value);
        }
        if (meterialID != null) {
            paramIndex++;
            sql += " AND meterialID = ? ";
            Object[] value = {"INT", meterialID};
            params.put(paramIndex, value);
        }

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            for (Map.Entry<Integer, Object[]> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object[] value = entry.getValue();

                if(value[0].equals("STRING")){
                    ps.setString(key, value[1].toString());
                }else if(value[0].equals("INT")){
                    ps.setInt(key, Integer.parseInt(value[1].toString()));
                }
                else if(value[0].equals("BOOLEAN")){
                    ps.setBoolean(key, Boolean.parseBoolean(value[1].toString()));
                }
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                 int pclothID = rs.getInt("clothingID");
                String pname = rs.getString("name");
                boolean pgeder = rs.getBoolean("gender");
                String ppath = rs.getString("path");
                int psizeID = rs.getInt("sizeID");
                int pstyleID = rs.getInt("styleID");
                int pcolorID = rs.getInt("colorID");
                int pmeterialID = rs.getInt("meterialID");
                Cloth c = new Cloth(pclothID, pname, pgeder, ppath, psizeID, pstyleID, pcolorID, pmeterialID);
                searchList.add(c);
            }
        } catch (SQLException ex) {
        }

        return searchList;
        

    }


}
class test{
    public static void main(String[] args) {
        DatabaseContext db = new DatabaseContext();
        ArrayList<Cloth> SearchByFilter = db.SearchByFilter(null, true,2, 2,4, 1);
        for (Cloth cloth : SearchByFilter) {
            System.out.println(cloth.toString());
            
        }
        
    }
}
