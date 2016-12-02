/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author q
 */
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

    public void insert() {
        String sql = "INSERT INTO [dbo].[clothingTBL]"
                + "           ([clothingName]"
                + "           ,[styleID]"
                + "           ,[sizeID]"
                + "           ,[colorID]"
                + "           ,[materialID]"
                + "           ,[image])"
                + "     VALUES "
                + "           (?,?,?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            /*inserting image in pictures table  */
            File file = new File("resource/image/common-ground2000_large.jpg");

            FileInputStream fs = new FileInputStream(file);

            ps.setString(1, "test clothing");
            ps.setInt(2, 1);
            ps.setInt(3, 2);
            ps.setInt(4, 2);
            ps.setInt(5, 2);
            ps.setBinaryStream(6, fs, fs.available());
            int i = ps.executeUpdate();

            if (i != 0) {
                System.out.println("image inserted successfully");
            } else {
                System.out.println("\"problem in image insertion\"");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (FileNotFoundException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }

}

class test {

    public static void main(String[] args) {
        DatabaseContext db = new DatabaseContext();
        db.insert();
    }
}
