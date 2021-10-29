package com.company.controller.admin.api;

import com.company.model.CategoryModel;
import com.company.service.ICategoryService;
import com.company.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-category"})
public class CategoryAPI extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper ();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        CategoryModel categoryModel = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        categoryModel = (CategoryModel) categoryService.SelectAll ();
        mapper.writeValue ( resp.getOutputStream (),categoryModel );
        System.out.println (categoryModel);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper ();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        CategoryModel categoryModel = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        categoryModel = categoryService.save( categoryModel );
        mapper.writeValue ( resp.getOutputStream (),categoryModel );
        System.out.println (categoryModel);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper ();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        CategoryModel  updateCategory= HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        updateCategory = categoryService.update ( updateCategory );
        mapper.writeValue ( resp.getOutputStream (),updateCategory );
        System.out.println (updateCategory);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper ();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        CategoryModel  categoryModel = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        categoryService.delete (categoryModel.getIds() );
        mapper.writeValue ( resp.getOutputStream (),"{}" );
    }
}
