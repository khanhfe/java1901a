package com.company.dao;

import com.company.model.CategoryModel;

import java.util.List;

public interface ICategoryDAO extends GenericDAO<CategoryModel>{
    List<CategoryModel> SelectAll() ;
    CategoryModel findOne(Long id);
    CategoryModel findOneByName(String name);
    Long save (CategoryModel categoryModel);
    void update (CategoryModel categoryModel);
    void delete (long id);
}
