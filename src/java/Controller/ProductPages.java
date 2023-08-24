/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAO.BrandDAO;
import DAO.ProductDAO;
import Entity.Brand;
import Entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *
 * @author Admin
 */
public class ProductPages extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
         
        ProductDAO productdao = new ProductDAO();
         BrandDAO brandDAO = new BrandDAO();
        Product product = productdao.getProductById(Integer.parseInt(id));
         ArrayList<Product> productListLienquan = productdao.getListProducts(product.getCategoryName());
         
          ArrayList<Brand> listBrand = brandDAO.getListBrands1();
          
        String imgDe = product.getSmallImage();
        if (imgDe != null) {
            Document doc = Jsoup.parse(imgDe);
            Elements imgElements = doc.select("img[src]");
            String[] srcArray = new String[imgElements.size()];
            ArrayList<String> image = new ArrayList<>();
            for (int i = 0; i < imgElements.size(); i++) {
                Element img = imgElements.get(i);
                String src = img.attr("src");
                srcArray[i] = src;
                image.add(src);
            }
            req.setAttribute("data", image);
        }
        req.setAttribute("product", product);
        req.setAttribute("productListLienquan", productListLienquan);
        req.setAttribute("brand", listBrand);
        req.getRequestDispatcher("Product.jsp").forward(req, resp);
        
    }
    
}
