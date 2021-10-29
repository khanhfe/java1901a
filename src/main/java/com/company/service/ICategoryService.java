package com.company.service;

import com.company.model.CategoryModel;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> SelectAll();
    CategoryModel findOne(long id);
    CategoryModel findOneByName(String name);
    CategoryModel save(CategoryModel categoryModel);
    CategoryModel update(CategoryModel updateCategory);
    void delete(long[] ids);
}
