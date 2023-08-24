/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Image;
import Entity.Product;
import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    public static String withLargeIntegers(double value) {
        DecimalFormat df = new DecimalFormat("###,###,###");
        return df.format(value);
    }

    public void deleteProduct(int id) {
        try {
            String strSelect = "UPDATE Product SET status = 1 WHERE ProductID = ?";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("deleteProduct: " + e.getMessage());
        }
    }

    public int getSizeOfList(String key) {
        String sql = "select count(ProductID)\n"
                + "                from Product a join Category b on a.CategoryID = b.CategoryID\n"
                + "                join Brand c on a.BrandID = c.BrandID \n"
                + "                join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "                join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "                Where a.status = 0";
        if (key != null && !key.isEmpty()) {
            sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("getSizeOfListP: " + e);
        }
        return 0;
    }

    public void addProduct(String productName, String brand, String category, String quantity, String price, String discount, String guarantee, String otherDes, String description, String fileLargeImg, String fileSmallImg, int adminID, String file) {
        LocalDateTime currentTime = LocalDateTime.now();
        try {
            String strSelect = "INSERT INTO Product (ProductName, BrandID, CategoryID, Description, UnitPrice, Discount, Img, UnitInStock, CreatedBy, CreatedDate,ModifiedDate,ModifiedBy, Guarantee,LargeImage,OtherDescription,status,[File]) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setString(1, productName);
            st.setInt(2, Integer.parseInt(brand));
            st.setInt(3, Integer.parseInt(category));
            st.setString(4, description);
            st.setString(5, price);
            st.setInt(6, Integer.parseInt(discount));
            st.setString(7, fileSmallImg);
            st.setInt(8, Integer.parseInt(quantity));
            st.setInt(9, adminID);
            st.setString(10, currentTime.toString());
            st.setString(11, currentTime.toString());
            st.setInt(12, adminID);
            st.setInt(13, Integer.parseInt(guarantee));
            st.setString(14, fileLargeImg);
            st.setString(15, otherDes);
            st.setString(16, "0");
            st.setString(17, file);
            int rowsAffected = st.executeUpdate();
            System.out.println("Number of rows affected: " + rowsAffected);

        } catch (Exception e) {
            System.out.println("addProductAdmin: " + e.getMessage());
        }
    }

    public ArrayList<Product> getListProductClient() {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT top 8 a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage\n"
                    + "                    FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "                    JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "					Where a.status = 0";

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public List<Product> getListByPage(int start, int top, String key) {
        List<Product> data = new ArrayList<>();
        String sql = "select top " + top + " a.ProductID , a.ProductName , c.BrandName , b.CategoryName, a.UnitPrice , a.Discount , d.AdminName , a.CreatedDate,e.AdminName , a.ModifiedDate,a.Guarantee,a.LargeImage,a.UnitInStock,a.[File]\n"
                + "from Product a join Category b on a.CategoryID = b.CategoryID \n"
                + "join Brand c on a.BrandID = c.BrandID \n"
                + "join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "Where a.status = 0"
                + "  and ProductID > all (SELECT top " + start + " ProductID\n"
                + "			from Product a join Category b on a.CategoryID = b.CategoryID \n"
                + "join Brand c on a.BrandID = c.BrandID \n"
                + "join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "Where a.status = 0";
        try {
            if (key != null && !key.isEmpty()) {
                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'))";

                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'";

                try {
                    int key_num = Integer.parseInt(key);
                    sql += " or ProductID = " + key + ")";
                } catch (Exception e) {
                    sql += ")";
                }
            } else {
                sql += ")";
            }
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String AdminCre = rs.getString(7);
                SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy");
                String CreDate = date.format(rs.getDate(8));
                String AdminMo = rs.getString(9);
                String MoDate = date.format(rs.getDate(10));
                int Guarantee = rs.getInt(11);
                String LargeImg = rs.getString(12);
                int Quantity = rs.getInt(13);
                String file = rs.getString(14);
                int numberGua = numberGuarantee(ProductID);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, AdminCre, AdminMo, CreDate, MoDate, Guarantee, Quantity, LargeImg, file, numberGua));
            }
        } catch (SQLException e) {
            System.out.println("getListByPageP: " + e);
        }
        return data;
    }

    public List<Product> getListByDeletePage(int start, int top, String key) {
        List<Product> data = new ArrayList<>();
        String sql = "select top " + top + " a.ProductID , a.ProductName , c.BrandName , b.CategoryName, a.UnitPrice , a.Discount , d.AdminName , a.CreatedDate,e.AdminName , a.ModifiedDate,a.Guarantee,a.LargeImage,a.UnitInStock,a.[File]\n"
                + "from Product a join Category b on a.CategoryID = b.CategoryID \n"
                + "join Brand c on a.BrandID = c.BrandID \n"
                + "join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "Where a.status = 1"
                + "  and ProductID > all (SELECT top " + start + " ProductID\n"
                + "			from Product a join Category b on a.CategoryID = b.CategoryID \n"
                + "join Brand c on a.BrandID = c.BrandID \n"
                + "join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "Where a.status = 1";
        try {
            if (key != null && !key.isEmpty()) {
                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'))";

                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'";

                try {
                    int key_num = Integer.parseInt(key);
                    sql += " or ProductID = " + key + ")";
                } catch (Exception e) {
                    sql += ")";
                }
            } else {
                sql += ")";
            }
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String AdminCre = rs.getString(7);
                SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy");
                String CreDate = date.format(rs.getDate(8));
                String AdminMo = rs.getString(9);
                String MoDate = date.format(rs.getDate(10));
                int Guarantee = rs.getInt(11);
                String LargeImg = rs.getString(12);
                int Quantity = rs.getInt(13);
                String file = rs.getString(14);

                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, AdminCre, AdminMo, CreDate, MoDate, Guarantee, Quantity, LargeImg, file));
            }
        } catch (SQLException e) {
            System.out.println("getListByPageP: " + e);
        }
        return data;
    }

    public int getSizeOfListDelete(String key) {
        String sql = "select count(ProductID)\n"
                + "from Product a join Category b on a.CategoryID = b.CategoryID \n"
                + "join Brand c on a.BrandID = c.BrandID \n"
                + "join [Admin] d on a.CreatedBy = d.AdminID  \n"
                + "join [Admin] e on a.ModifiedBy = e.AdminID\n"
                + "Where a.status = 1";
        if (key != null && !key.isEmpty()) {
            sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%' or d.AdminName like N'%" + key.trim() + "%' or e.AdminName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("getSizeOfListdeleteP: " + e);
        }
        return 0;
    }

    public void deleteAllProduct() {
        try {
            String str = "UPDATE [Product] SET status = 1";
            PreparedStatement st = connection.prepareStatement(str);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("deleteAllProduct: " + e.getMessage());
        }
    }

    public void rollbackProduct(int id) {
        try {
            String strSelect = "UPDATE Product SET status = 0 WHERE ProductID = ?";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("rollbackProduct: " + e.getMessage());
        }
    }

    public void rollbackAllProduct() {
        try {
            String str = "UPDATE [Product] SET status = 0";
            PreparedStatement st = connection.prepareStatement(str);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("rollbackAllProduct: " + e.getMessage());
        }
    }

    public Product getProductById(int id) {

        Product product = null;

        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.Description, a.UnitPrice, a.Discount, a.Guarantee, a.LargeImage, a.UnitInStock, a.Img, a.OtherDescription,a.[File]\n"
                    + "FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "JOIN [Admin] d ON a.CreatedBy = d.AdminID\n"
                    + "JOIN [Admin] e ON a.ModifiedBy = e.AdminID\n"
                    + "WHERE ProductID = ?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Description = rs.getString(5);
                String Price = withLargeIntegers(rs.getDouble(6));
                int Discount = rs.getInt(7);
                int Guarantee = rs.getInt(8);
                String LargeImage = rs.getString(9);
                int Quantity = rs.getInt(10);
                String SmallImage = rs.getString(11);
                String OtherDes = rs.getString(12);
                String file = rs.getString(13);
                product = new Product(ProductID, ProductName, BrandName, CategoryName, Description, Price, Discount, SmallImage, Guarantee, Quantity, LargeImage, OtherDes, file);
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return product;
    }

    public void addProduct(String productName, String brand, String category, String quantity, String price, String discount, String guarantee, String otherDes, String description, String fileLargeImg, String fileSmallImg, int adminID) {
        LocalDateTime currentTime = LocalDateTime.now();
        try {
            String strSelect = "INSERT INTO Product (ProductName, BrandID, CategoryID, Description, UnitPrice, Discount, Img, UnitInStock, CreatedBy, CreatedDate,ModifiedDate,ModifiedBy, Guarantee,LargeImage,OtherDescription,status) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setString(1, productName);
            st.setInt(2, Integer.parseInt(brand));
            st.setInt(3, Integer.parseInt(category));
            st.setString(4, description);
            st.setString(5, price);
            st.setInt(6, Integer.parseInt(discount));
            st.setString(7, fileSmallImg);
            st.setInt(8, Integer.parseInt(quantity));
            st.setInt(9, adminID);
            st.setString(10, currentTime.toString());
            st.setString(11, currentTime.toString());
            st.setInt(12, adminID);
            st.setInt(13, Integer.parseInt(guarantee));
            st.setString(14, fileLargeImg);
            st.setString(15, otherDes);
            st.setString(16, "0");
            int rowsAffected = st.executeUpdate();
            System.out.println("Number of rows affected: " + rowsAffected);

        } catch (Exception e) {
            System.out.println("addProductAdmin: " + e.getMessage());
        }
    }

    public ArrayList<Product> getListProduct() {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage, a.UnitInStock\n"
                    + "FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n";

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                int quantity = rs.getInt(8);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage, quantity));
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public int getSizeOfListProductClient(String key) {
        String sql = "select count(ProductID)\n"
                + "                from Product a join Category b on a.CategoryID = b.CategoryID\n"
                + "                join Brand c on a.BrandID = c.BrandID \n"
                + "                Where a.status = 0";
        if (key != null && !key.isEmpty()) {
            sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("getSizeOfListProductClient: " + e);
        }
        return 0;
    }

    public int getSizeOfListProductClientByCategoryId(String key, String[] categoryId) {
        String sql = "select count(ProductID)\n"
                + "                from Product a join Category b on a.CategoryID = b.CategoryID\n"
                + "                join Brand c on a.BrandID = c.BrandID \n"
                + "                Where a.status = 0 ";
        
        if (key != null && !key.isEmpty()) {
            sql += "and (a.ProductName like N'%" + key.trim() + "%' or b.CategoryName like N'%" + key.trim() + "%' or c.BrandName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        if (categoryId != null && categoryId[0].equals("0")) {
            sql += "and a.CategoryID in( ";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(" getSizeOfListProductClientByCategoryId: " + e );
            System.out.println(sql);
        }
        return 0;
    }

    public int getSizeOfListProductClient(String key, String id) {
        String sql = "select count(ProductID)\n"
                + "                from Product a join Category b on a.CategoryID = b.CategoryID\n"
                + "                join Brand c on a.BrandID = c.BrandID \n"
                + "                Where a.status = 0";
        if (key != null && !key.isEmpty()) {
            sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("getSizeOfListProductClient: " + e);
        }
        return 0;
    }

    public int getSizeOfListProductClientByCategoryId(String key, String id, String[] categoryId) {
        String sql = "select count(ProductID)\n"
                + "                from Product a join Category b on a.CategoryID = b.CategoryID\n"
                + "                join Brand c on a.BrandID = c.BrandID \n"
                + "                Where a.status = 0 ";

        if (key != null && !key.isEmpty()) {
            sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%'";
            try {
                int key_num = Integer.parseInt(key);
                sql += " or ProductID = " + key + ")";
            } catch (Exception e) {
                sql += ")";
            }
        }
        if (categoryId != null) {
            sql += "and a.CategoryID in( ";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql += sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("getSizeOfListProductClientByCategoryId: " + e);
        }
        return 0;
    }

    public ArrayList<Product> getListProductClient(int start, int top, String key, String id, String categoryId) {
        ArrayList<Product> data = new ArrayList<>();
        String sql = "SELECT top " + top + " a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage\n"
                + "                    FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                + "                    JOIN Brand c ON a.BrandID = c.BrandID\n"
                + "					Where a.status = 0 and a.ProductID = ? "
                + "and a.ProductID > all(SELECT top " + start + " a.ProductID\n"
                + "                    FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                + "                    JOIN Brand c ON a.BrandID = c.BrandID\n"
                + "					Where a.status = 0 and a.ProductID = ? ";
        if (categoryId != null) {
            sql += "and a.CategoryID = " + categoryId + " ";
        }
        try {
            if (key != null && !key.isEmpty()) {
                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%'))";

                sql += "and (ProductName like N'%" + key.trim() + "%' or CategoryName like N'%" + key.trim() + "%' or BrandName like N'%" + key.trim() + "%'";

                try {
                    int key_num = Integer.parseInt(key);
                    sql += " or ProductID = " + key + ")";
                } catch (Exception e) {
                    sql += ")";
                }
            } else {
                sql += ")";
            }

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
        } catch (Exception e) {
            System.out.println("getListProductClient: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProductClient(int start, int top, String key, String[] categoryId) {
        ArrayList<Product> data = new ArrayList<>();
        String sql = "SELECT top " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] inner JOIN [Category]  ON Category.CategoryID = Product.CategoryID\n"
                + " inner JOIN Brand  ON Product.BrandID = Brand.BrandID\n"
                + "Where Product.status = 0 and Product.ProductID > all(SELECT top " + start + " Product.ProductID FROM [Product] inner JOIN [Category]  ON Category.CategoryID = Product.CategoryID\n"
                + " inner JOIN Brand  ON Product.BrandID = Brand.BrandID\n"
                + "Where Product.status = 0 ";
        
        try {

            if (key != null && !key.isEmpty()) {
                sql += "and (Product.ProductName like N'%" + key.trim() + "%' or Category.CategoryName like N'%" + key.trim() + "%' or Brand.BrandName like N'%" + key.trim() + "%'))";

                sql += "and (Product.ProductName like N'%" + key.trim() + "%' or Category.CategoryName like N'%" + key.trim() + "%' or Brand.BrandName like N'%" + key.trim() + "%'";

                try {
                    int key_num = Integer.parseInt(key);
                    sql += " or Product.ProductID = " + key + ")";

                } catch (Exception e) {
                    sql += ")";
                }
            } else {
                sql += ")";
            }
            if (categoryId != null) {
            sql += "and Product.CategoryID in( ";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
        } catch (Exception e) {
            System.out.println("getListProductClient: " + e.getMessage());
            System.out.println(sql);
        }
        return data;
    }
    public ArrayList<Product> getListProductClientPriceLow(int start, int top, String key, String[] categoryId) {
    ArrayList<Product> data = new ArrayList<>();
    String sql = "SELECT TOP " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 AND Product.ProductID > ALL(SELECT TOP " + start + " Product.ProductID FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 ";

    try {
        if (key != null && !key.isEmpty()) {
            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'))";

            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'";

            try {
                int key_num = Integer.parseInt(key);
                sql += " OR Product.ProductID = " + key + ")";

            } catch (Exception e) {
                sql += ")";
            }
        } else {
            sql += ")";
        }
        
        if (categoryId != null) {
            sql += "AND Product.CategoryID IN (";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        sql += " ORDER BY Product.UnitPrice ASC"; // Update the ORDER BY clause to sort by UnitPrice in ascending order

        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            int ProductID = rs.getInt(1);
            String ProductName = rs.getString(2);
            String BrandName = rs.getString(3);
            String CategoryName = rs.getString(4);
            String Price = withLargeIntegers(rs.getDouble(5));
            int Discount = rs.getInt(6);
            String LargeImage = rs.getString(7);
            data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
        }
    } catch (Exception e) {
        System.out.println("getListProductClient: " + e.getMessage());
        System.out.println(sql);
    }
    return data;
}
    public ArrayList<Product> getListProductClientPriceHigh(int start, int top, String key, String[] categoryId) {
    ArrayList<Product> data = new ArrayList<>();
    String sql = "SELECT TOP " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 AND Product.ProductID > ALL(SELECT TOP " + start + " Product.ProductID FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 ";

    try {
        if (key != null && !key.isEmpty()) {
            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'))";

            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'";

            try {
                int key_num = Integer.parseInt(key);
                sql += " OR Product.ProductID = " + key + ")";

            } catch (Exception e) {
                sql += ")";
            }
        } else {
            sql += ")";
        }
        
        if (categoryId != null) {
            sql += "AND Product.CategoryID IN (";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        sql += " ORDER BY Product.UnitPrice DESC"; // Update the ORDER BY clause to sort by UnitPrice in descending order

        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            int ProductID = rs.getInt(1);
            String ProductName = rs.getString(2);
            String BrandName = rs.getString(3);
            String CategoryName = rs.getString(4);
            String Price = withLargeIntegers(rs.getDouble(5));
            int Discount = rs.getInt(6);
            String LargeImage = rs.getString(7);
            data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
        }
    } catch (Exception e) {
        System.out.println("getListProductClient: " + e.getMessage());
        System.out.println(sql);
    }
    return data;
}
    public ArrayList<Product> getListProductClientZtoA(int start, int top, String key, String[] categoryId) {
    ArrayList<Product> data = new ArrayList<>();
    String sql = "SELECT TOP " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 AND Product.ProductID > ALL(SELECT TOP " + start + " Product.ProductID FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 ";

    try {

        if (key != null && !key.isEmpty()) {
            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'))";

            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'";

            try {
                int key_num = Integer.parseInt(key);
                sql += " OR Product.ProductID = " + key + ")";

            } catch (Exception e) {
                sql += ")";
            }
        } else {
            sql += ")";
        }
        if (categoryId != null) {
            sql += "AND Product.CategoryID IN (";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        sql += " ORDER BY Product.ProductName DESC"; // Update the ORDER BY clause

        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            int ProductID = rs.getInt(1);
            String ProductName = rs.getString(2);
            String BrandName = rs.getString(3);
            String CategoryName = rs.getString(4);
            String Price = withLargeIntegers(rs.getDouble(5));
            int Discount = rs.getInt(6);
            String LargeImage = rs.getString(7);
            data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
        }
    } catch (Exception e) {
        System.out.println("getListProductClient: " + e.getMessage());
        System.out.println(sql);
    }
    return data;
}
    public ArrayList<Product> getListProductClientAtoZ(int start, int top, String key, String[] categoryId) {
    ArrayList<Product> data = new ArrayList<>();
    String sql = "SELECT TOP " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 AND Product.ProductID > ALL(SELECT TOP " + start + " Product.ProductID FROM [Product] INNER JOIN [Category] ON Category.CategoryID = Product.CategoryID\n"
            + "INNER JOIN Brand ON Product.BrandID = Brand.BrandID\n"
            + "WHERE Product.status = 0 ";

    try {

        if (key != null && !key.isEmpty()) {
            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'))";

            sql += "AND (Product.ProductName LIKE N'%" + key.trim() + "%' OR Category.CategoryName LIKE N'%" + key.trim() + "%' OR Brand.BrandName LIKE N'%" + key.trim() + "%'";

            try {
                int key_num = Integer.parseInt(key);
                sql += " OR Product.ProductID = " + key + ")";

            } catch (Exception e) {
                sql += ")";
            }
        } else {
            sql += ")";
        }
        if (categoryId != null) {
            sql += "AND Product.CategoryID IN (";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        sql += " ORDER BY Product.ProductName ASC"; // Add the ORDER BY clause

        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            int ProductID = rs.getInt(1);
            String ProductName = rs.getString(2);
            String BrandName = rs.getString(3);
            String CategoryName = rs.getString(4);
            String Price = withLargeIntegers(rs.getDouble(5));
            int Discount = rs.getInt(6);
            String LargeImage = rs.getString(7);
            data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
        }
    } catch (Exception e) {
        System.out.println("getListProductClient: " + e.getMessage());
        System.out.println(sql);
    }
    return data;
}
    public ArrayList<Product> getListProductClientByCategoryId(int start, int top, String key, String id, String[] categoryId) {
        ArrayList<Product> data = new ArrayList<>();
        String sql = "SELECT top " + top + " Product.ProductID, Product.ProductName, Brand.BrandName, Category.CategoryName, Product.UnitPrice, Product.Discount, Product.LargeImage FROM [Product] inner JOIN [Category]  ON Category.CategoryID = Product.CategoryID\n"
                + " inner JOIN Brand  ON Product.BrandID = Brand.BrandID\n"
                + "Where Product.status = 0 and Product.ProductID > all(SELECT top " + start + " Product.ProductID FROM [Product] inner JOIN [Category]  ON Category.CategoryID = Product.CategoryID\n"
                + " inner JOIN Brand  ON Product.BrandID = Brand.BrandID\n"
                + "Where Product.status = 0 ";
        if (categoryId != null) {
            sql += "and a.CategoryID in( ";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql += sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            if (key != null && !key.isEmpty()) {
                sql += "and (Product.ProductName like N'%" + key.trim() + "%' or Category.CategoryName like N'%" + key.trim() + "%' or Brand.BrandName like N'%" + key.trim() + "%'))";
                if (categoryId != null) {
                    sql += " and Product.CategoryID = " + categoryId + " ";
                }
                sql += "and (Product.ProductName like N'%" + key.trim() + "%' or Category.CategoryName like N'%" + key.trim() + "%' or Brand.BrandName like N'%" + key.trim() + "%'";

                try {
                    int key_num = Integer.parseInt(key);
                    sql += " or Product.ProductID = " + key + ")";
                } catch (Exception e) {
                    sql += ")";
                }
            } else {
                sql += ")";
            }
            if (categoryId != null) {
            sql += "and a.CategoryID in( ";
            for (int i = 0; i < categoryId.length; i++) {
                sql += categoryId[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql += sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
        } catch (Exception e) {
            System.out.println("getListProductClient: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProductByBrandId(String brandID) {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName,a.UnitPrice, a.Discount,a.LargeImage, a.UnitInStock\n"
                    + "FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "WHERE a.BrandID = ?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, Integer.parseInt(brandID)); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                int quantity = rs.getInt(8);

                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage, quantity));
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListHotItem() {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT Top 2 a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage, SUM(d.Quantity) AS Quantity\n"
                    + "FROM Product a\n"
                    + "JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "JOIN OrderDetails d ON a.ProductID = d.ProductID\n"
                    + "GROUP BY a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage\n"
                    + "order by Quantity desc";

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListNewItem() {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT Top 4 a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage, a.UnitInStock\n"
                    + "                    FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "                    JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "					order by a.ProductID desc";

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                int quantity = rs.getInt(8);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage, quantity));
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProducts(String i) {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage\n"
                    + "FROM Product a\n"
                    + "JOIN Category b ON a.CategoryID = b.CategoryID \n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "Where b.CategoryName = '" + i + "'";

            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, i); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }

            return data;

        } catch (Exception e) {
            System.out.println("getProduct: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListFinalItem(int i) {
        ArrayList<Product> data = new ArrayList<>();
        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.UnitPrice, a.Discount, a.LargeImage\n"
                    + "FROM Product a\n"
                    + "JOIN Category b ON a.CategoryID = b.CategoryID \n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "Where a.CategoryID = ?\n"
                    + "Order by a.ProductID Desc";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, i); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Price = withLargeIntegers(rs.getDouble(5));
                int Discount = rs.getInt(6);
                String LargeImage = rs.getString(7);
                data.add(new Product(ProductID, ProductName, BrandName, CategoryName, Price, Discount, LargeImage));
            }
            System.out.println("size: " + data.size());
            return data;
        } catch (Exception e) {
            System.out.println("getListFinalItem: " + e.getMessage());
        }
        return null;
    }

    public ArrayList<Image> getImageProductById(int id) {

        ArrayList<Image> data = new ArrayList<>();

        try {
            String sql = "select ImgID, ImgLink  from ImageProduct\n"
                    + "Where ProductID = ?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ImgID = rs.getInt(1);
                String ImgLink = rs.getString(2);

                Image image = new Image(ImgID, id, ImgLink);
                data.add(image);
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return data;
    }

    public Product getProductByName(String name) {
        try {
            String sql = "SELECT ProductID, ProductName,UnitInStock, UnitPrice, Discount\n"
                    + "FROM Product \n"
                    + "Where ProductName = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                int quantity = rs.getInt(3);
                String Price = String.valueOf(rs.getDouble(4));
                int Discount = rs.getInt(5);
                return new Product(ProductID, ProductName, Price, Discount, quantity);
            }
            return null;
        } catch (Exception e) {
            System.out.println("getProductByName: " + e.getMessage());
        }
        return null;
    }

    public void updateProduct(int adminId, int productID, String productName, String quantity, String category, String brand, String price, String discount, String guarantee, String otherDes, String description, String fileSmallImg, String fileLargeImg) {
        LocalDateTime currentTime = LocalDateTime.now();
        try {
            String strSelect = "UPDATE Product\n"
                    + "SET ProductName = ?, BrandID = ?, CategoryID = ?, UnitPrice = ?, Img = ?, UnitInStock = ?, ModifiedBy = ?, ModifiedDate = ?,Discount = ?,Guarantee = ?,Description = ?,LargeImage = ?,OtherDescription = ?\n"
                    + "WHERE ProductID = ?";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setString(1, productName);
            st.setInt(2, Integer.parseInt(brand));
            st.setInt(3, Integer.parseInt(category));
            st.setString(4, price);
            st.setString(5, fileSmallImg);
            st.setInt(6, Integer.parseInt(quantity));
            st.setInt(7, adminId);
            st.setString(8, currentTime.toString());
            st.setInt(9, Integer.parseInt(discount));
            st.setInt(10, Integer.parseInt(guarantee));
            st.setString(11, description);
            st.setString(12, fileLargeImg);
            st.setString(13, otherDes);
            st.setInt(14, productID);

            int rowsAffected = st.executeUpdate();
            System.out.println("Number of rows affected: " + rowsAffected);

        } catch (Exception e) {
            System.out.println("updateProduct: " + e.getMessage());
        }
    }

    public void updateProduct(int adminId, int productID, String productName, String quantity, String category, String brand, String price, String discount, String guarantee, String otherDes, String description, String imgDetails, String fileLargeImg, String file) {
        LocalDateTime currentTime = LocalDateTime.now();
        try {
            String strSelect = "UPDATE Product\n"
                    + "SET ProductName = ?, BrandID = ?, CategoryID = ?, UnitPrice = ?, Img = ?, UnitInStock = ?, ModifiedBy = ?, ModifiedDate = ?,Discount = ?,Guarantee = ?,Description = ?,LargeImage = ?,OtherDescription = ?,[File] = ?\n"
                    + "WHERE ProductID = ?";
            PreparedStatement st = connection.prepareStatement(strSelect);
            st.setString(1, productName);
            st.setInt(2, Integer.parseInt(brand));
            st.setInt(3, Integer.parseInt(category));
            st.setString(4, price);
            st.setString(5, imgDetails);
            st.setInt(6, Integer.parseInt(quantity));
            st.setInt(7, adminId);
            st.setString(8, currentTime.toString());
            st.setInt(9, Integer.parseInt(discount));
            st.setInt(10, Integer.parseInt(guarantee));
            st.setString(11, description);
            st.setString(12, fileLargeImg);
            st.setString(13, otherDes);
            st.setString(14, file);
            st.setInt(15, productID);

            int rowsAffected = st.executeUpdate();
            System.out.println("Number of rows affected: " + rowsAffected);

        } catch (Exception e) {
            System.out.println("updateProduct: " + e.getMessage());
        }
    }

    private int numberGuarantee(int ProductID) {
        int count = 0;

        try {
            String sql = "select  count(a.GuaranteeID) from Guarantee a join Product b on a.ProductID = b.ProductID  and a.ProductID = ?\n"
                    + "join [User] c on c.UserID = a.UserID ";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, ProductID); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("getProductById: " + e.getMessage());
        }
        return count;
    }

    public Product getProductByIdForCart(int id) {
        Product product = null;
        try {
            String sql = "SELECT a.ProductID, a.ProductName, c.BrandName, b.CategoryName, a.Description, a.UnitPrice, a.Discount, a.Guarantee, a.LargeImage, a.UnitInStock, a.Img, a.OtherDescription\n"
                    + "FROM Product a JOIN Category b ON a.CategoryID = b.CategoryID\n"
                    + "JOIN Brand c ON a.BrandID = c.BrandID\n"
                    + "JOIN [Admin] d ON a.CreatedBy = d.AdminID\n"
                    + "JOIN [Admin] e ON a.ModifiedBy = e.AdminID\n"
                    + "WHERE ProductID = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id); // Set the value for the parameter
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int ProductID = rs.getInt(1);
                String ProductName = rs.getString(2);
                String BrandName = rs.getString(3);
                String CategoryName = rs.getString(4);
                String Description = rs.getString(5);
                String Price = String.valueOf(rs.getDouble(6));
                int Discount = rs.getInt(7);
                int Guarantee = rs.getInt(8);
                String LargeImage = rs.getString(9);
                int Quantity = rs.getInt(10);
                String SmallImage = rs.getString(11);
                String OtherDes = rs.getString(12);
                product = new Product(ProductID, ProductName, BrandName, CategoryName, Description, Price, Discount, SmallImage, Guarantee, Quantity, LargeImage, OtherDes);
            }
        } catch (Exception e) {
            System.out.println("getProductByIdForCart: " + e.getMessage());
        }
        return product;
    }

    public ArrayList<Product> getListProductByBrandId(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
