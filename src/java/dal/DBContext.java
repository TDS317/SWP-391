package dal;

import DAO.GuaranteeDAO;
import DAO.LoginDAO;
import DAO.ProductDAO;
import Entity.Admin;
import Entity.Guarantee;
import Entity.User1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Ngo Tung Son
 */
public class DBContext {

    public Connection connection;

    public DBContext() {
        try {
            String user = "sa";
            String pass = "123";
            String url="jdbc:sqlserver://localhost:1433;databaseName=Swp391";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        ProductDAO c = new ProductDAO();
        
        String Email = "user";
        String Pass = "123456";
        String[] testString= new String[]{"1","2","3"};
        String[] priceCheckBox={"Dưới 1 triệu",
                     "Từ 1-5 triệu",
                     "Từ 5-10 triệu",
                     "Từ 10-20 triệu",
                     "Trên 20 triệu"};
        try {    
            System.out.println(c.getListProductClient(2, 10, "", testString));            
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}
