package com.company.controller.admin;

import com.company.service.ICategoryService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {
    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Long id = 2L;
//        req.setAttribute ( "category", categoryService.findOne ( id ));
//        req.setAttribute ( "category", categoryService.SelectAll ( ));



        RequestDispatcher requestDispatcher = req.getRequestDispatcher ( "/views/admin/home.jsp");
        requestDispatcher.forward (req,resp);
    }
}

