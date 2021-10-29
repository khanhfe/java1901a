package com.company.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/san-pham"})
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher ( "/views/web/san-pham.jsp" );
        requestDispatcher.forward (req,resp);
        String catid = req.getParameter ( "catid" );
//        ProductDao daos = new ProductDao ();
//        List<Product> listproduct = daos.getProduct(catid);
//        req.setAttribute("listProduct",listproduct);
    }

}
