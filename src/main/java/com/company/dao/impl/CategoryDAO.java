package com.company.dao.impl;

import com.company.dao.ICategoryDAO;
import com.company.mapper.CategoryMapper;
import com.company.model.CategoryModel;

import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {


    /// select by thì lấy cả mảng
    // findOne chỉ lấy một cột duy nhất trong một hàng
    @Override
    public List<CategoryModel> SelectAll() {
        String sql = "SELECT * FROM categories";
        return query ( sql,new CategoryMapper () );
    }

    @Override
    public CategoryModel findOne(Long id) {
        String sql = "SELECT * FROM categories WHERE id = ?";
        List<CategoryModel> category = query(sql, new CategoryMapper (), id);
        return category.isEmpty() ? null : category.get(0);
    }

    @Override
    public CategoryModel findOneByName(String name) {
        String sql = "SELECT * FROM categories WHERE name = ?";
        List<CategoryModel> category = query ( sql,new CategoryMapper () ,name);
        return category.isEmpty () ? null : category.get ( 0 );
    }

    @Override
    public Long save(CategoryModel categoryModel) {
        StringBuilder sql = new StringBuilder ("INSERT INTO categories");
        sql.append ( "(name,type,image,description,status,created_at,created_by)" );
        sql.append ( "VALUES(?, ?, ?, ?, ?, ?,?)");
        return insert ( sql.toString (),
                categoryModel.getName (),
                categoryModel.getType (),
                categoryModel.getImage (),
                categoryModel.getDescription (),
                categoryModel.getStatus (),
                categoryModel.getCreated_at (),
                categoryModel.getCreated_by ());
    }

    @Override
    public void update(CategoryModel categoryModel) {
        StringBuilder sql = new StringBuilder ("UPDATE categories SET name= ?,type=?,image=?,description=?,status=?,created_at=? ,created_by = ?,updated_at=?,updated_by=?");

        sql.append ( "WHERE id = ?" );
        update ( sql.toString (),
                 categoryModel.getName (),
                categoryModel.getType (),
                categoryModel.getImage (),
                categoryModel.getDescription (),
                categoryModel.getStatus (),
                categoryModel.getCreated_at (),
                categoryModel.getCreated_by (),
                categoryModel.getUpdated_at (),
                categoryModel.getUpdated_by ());
    }

    @Override
    public void delete(long id) {
        String sql = "DELETE FROM categories WHERE id = ?";
        update(sql, id);
    }
}
