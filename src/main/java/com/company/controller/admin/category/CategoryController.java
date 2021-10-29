package com.company.controller.admin.category;

import com.company.SystemConstant.systemConstant;
import com.company.model.CategoryModel;
import com.company.service.ICategoryService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = {"/admin-danh-sach-chuyen-muc"})
public class CategoryController  extends HttpServlet {
    @Inject ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        CategoryModel categoryModel = new CategoryModel ();
        categoryModel.setListResult ( categoryService.SelectAll () );

        req.setAttribute ( systemConstant.MODEL,categoryModel);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher ("/views/admin/category/category.jsp");
        requestDispatcher.forward (req,resp);
    }
}
