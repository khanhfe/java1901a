package com.company.service.impl;

import com.company.dao.ICategoryDAO;
import com.company.model.CategoryModel;
import com.company.service.ICategoryService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class CategoryService implements ICategoryService {
    @Inject
    private ICategoryDAO categoryDAO;


    @Override
    public List<CategoryModel> SelectAll() {
        return categoryDAO.SelectAll ();
    }

    @Override
    public CategoryModel findOne(long id) {
        CategoryModel categoryModel = categoryDAO.findOne ( id );
        categoryModel.setId ( categoryModel.getId ( ) );
        return categoryModel;
    }

    @Override
    public CategoryModel findOneByName(String name) {
        return categoryDAO.findOneByName ( name );
    }

    @Override
    public CategoryModel save(CategoryModel categoryModel) {
        categoryModel.setCreated_at ( new Timestamp ( System.currentTimeMillis () ) );// set time
        Long categoryId = categoryDAO.save (categoryModel );
        return categoryDAO.findOne ( categoryId);
    }

    @Override
    public CategoryModel update(CategoryModel updateCategory) {
//        CategoryModel oldCategory = categoryDAO.findOne ( updateCategory.getId () );

//        updateCategory.setCreated_at ( oldCategory.getCreated_at () );
//        updateCategory.setCreated_by ( oldCategory.getCreated_by () );

        updateCategory.setUpdated_at ( new Timestamp ( System.currentTimeMillis () ) );

         categoryDAO.update ( updateCategory );
        return categoryDAO.findOne ( updateCategory.getId () );
    }

    @Override
    public void delete(long[] ids) {
        for (long id: ids) {
            //1.delete comment (khoa ngoai category)
            //2.delete news
            categoryDAO.delete(id);
        }

    }
}
