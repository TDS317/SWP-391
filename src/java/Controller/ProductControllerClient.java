/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAO.BrandDAO;
import DAO.CategoryDAO;
import DAO.GuaranteeDAO;
import DAO.ProductDAO;
import Entity.Brand;
import Entity.Category;
import Entity.Guarantee;
import Entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductControllerClient extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            /* TODO output your page here. You may use following sample code. */
            String key = request.getParameter("key");
            ArrayList<Product> listAll = new ArrayList<Product>();
            BrandDAO brandDAO = new BrandDAO();
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Brand> listBrand = brandDAO.getListBrands();
            ArrayList<Category> listCategorys = categoryDAO.getListCategory();
            List<Product> list;
            ArrayList<Product> listProduct = new ArrayList<>();
            String sortOption = request.getParameter("sortOption");
            String[] priceCheckBox = {"Dưới 1 triệu",
                "Từ 1-5 triệu",
                "Từ 5-10 triệu",
                "Từ 10-20 triệu",
                "Trên 20 triệu"};
            boolean[] priceCheck = new boolean[priceCheckBox.length + 1];
            priceCheck[0] = true;
            String[] ramCheckBox = {"DƯỚI 4GB",
                "4GB",
                "8GB",
                "16GB",
                "Trên 16GB"};
            boolean[] ramCheck = new boolean[ramCheckBox.length + 1];
            String[] CPUCheckbox = {"AMD",
                "Intel Core i3",
                "Intel Core i5"};
            boolean[] CPUCheck = new boolean[CPUCheckbox.length + 1];
            ProductDAO pdb = new ProductDAO();
            String cid_raw = request.getParameter("cid");
            String[] cateagoryCheck_raw = request.getParameterValues("categoris");
            String[] priceCheck_raw = request.getParameterValues("prices");

            boolean[] checkcid = new boolean[listCategorys.size() + 1];
            String cid = null;
            int[] categoris = null;
            if (cateagoryCheck_raw != null) {
                cid = (cid_raw);
            }
//         tim nhieu cid   if (cateagoryCheck_raw!=null) {
//                categoris=new int[cateagoryCheck_raw.length];
//                for (int i = 0; i < categoris.length; i++) {
//                    
//                }
//            }
            if (cateagoryCheck_raw != null) {
                categoris = new int[cateagoryCheck_raw.length];
                for (int i = 0; i < categoris.length; i++) {
                    categoris[i] = Integer.parseInt(cateagoryCheck_raw[i]);
                }
            }
            if (cateagoryCheck_raw == null) {
                checkcid[0] = true;
            }
            if ((cateagoryCheck_raw != null) && (categoris[0] != 0)) {
                checkcid[0] = false;
                for (int i = 1; i < checkcid.length; i++) {
                    checkcid[i] = ischeck(listCategorys.get(i - 1).getCategoryID(), categoris);

                }
            }
            //phantrang
            int page, numperpage = 9;
            String xpage = request.getParameter("page");
            int size;

            size = pdb.getSizeOfListProductClientByCategoryId(request.getParameter("key"), cateagoryCheck_raw);

            int num = (size % numperpage == 0 ? (size / numperpage) : ((size / numperpage) + 1));

            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(numperpage * page, size);

            list = pdb.getListProductClient(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
            if (sortOption != null) {
                if (sortOption.equals("name-asc")) {
                    // Sort the list by Name (A - Z)
                    list = pdb.getListProductClientAtoZ(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
                } else if (sortOption.equals("name-desc")) {
                    // Sort the list by Name (Z - A)
                    list = pdb.getListProductClientZtoA(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
                } else if (sortOption.equals("pricehigh")) {
                    // Sort the list by Model (A - Z)
                    list = pdb.getListProductClientPriceLow(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
                } else if (sortOption.equals("pricelow")) {
                    // Sort the list by Model (Z - A)
                    list = pdb.getListProductClientPriceHigh(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
                } else {
                    // Default sorting: Relevance or other unrecognized options
                    list = pdb.getListProductClient(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
                }
            } else {
                // No sorting option selected
                list = pdb.getListProductClient(start, numperpage, request.getParameter("key"), cateagoryCheck_raw);
            }

            //phantrang
            System.out.println(cid);
            System.out.println(size);
            System.out.println(list == null);
            request.setAttribute("cateagoryCheck_raw", cateagoryCheck_raw);
            request.setAttribute("priceCheck", priceCheck);
            request.setAttribute("priceCheckBox", priceCheckBox);
            request.setAttribute("pid", 0);

            request.setAttribute("ramCheck", ramCheck);
            request.setAttribute("ramCheckBox", ramCheckBox);
            request.setAttribute("CPUCheck", CPUCheck);
            request.setAttribute("CPUCheckbox", CPUCheckbox);
            request.setAttribute("listCategorys", listCategorys);
            request.setAttribute("cid", 0);
            request.setAttribute("checkcid", checkcid);

            request.setAttribute("key", request.getParameter("key"));
            request.setAttribute("start", start);
            request.setAttribute("entryperpage", numperpage);
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("brand", listBrand);

            request.setAttribute("listProductClient", list);
            request.setAttribute("end", end);
            request.setAttribute("size", size);
            request.setAttribute("id", request.getParameter("id"));
            request.setAttribute("sortOption", sortOption);
            
            request.getRequestDispatcher("Product.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);

    }

    private boolean ischeck(int d, int[] id) {
        if (id == null) {
            return false;
        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;
                }
            }
            return false;
        }
    }

}
