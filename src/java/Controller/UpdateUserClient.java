/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import DAO.UserDAO1;
import Entity.User1;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Admin
 */
public class UpdateUserClient extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id =  req.getParameter("id");
        String userName = req.getParameter("name"); 
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String Email = req.getParameter("email");
        UserDAO1 userDao = new UserDAO1();
        userDao.updateUser(Integer.parseInt(id), userName, address, phone, Email);
        
        
       
          resp.sendRedirect("/SWP391_LapTop/Home");

        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        int id = Integer.parseInt(req.getParameter("id"));
        System.out.println(id);
        HttpSession session = req.getSession();
        session.setAttribute("userId", id);
        UserDAO1 userDAO1 = new UserDAO1();
        User1 user = userDAO1.getUserByID1(id);
        
        
        
       
        req.setAttribute("User1", user);
        req.getRequestDispatcher("UpdateUser.jsp").forward(req, resp);
    }

}


    


    

