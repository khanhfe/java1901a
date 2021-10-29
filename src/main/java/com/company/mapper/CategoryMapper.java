package com.company.mapper;

import com.company.model.CategoryModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper{

    @Override
    public CategoryModel mapRow(ResultSet rs) {
        try {
            CategoryModel categories = new CategoryModel ();
            categories.setId (rs.getLong ( "id" ) );
            categories.setName (rs.getString ( "name" ) );
            categories.setType (rs.getInt ( "type" ) );
            categories.setImage (rs.getString ( "image" ) );
            categories.setDescription (rs.getString ( "description" ) );
            categories.setStatus (rs.getInt ( "status" ) );
            categories.setCreated_at (rs.getTimestamp ( "created_at" ) );
            categories.setCreated_by (rs.getString ( "created_by" ) );


            if(rs.getTimestamp ( "updated_at" ) != null){
                categories.setUpdated_at ( rs.getTimestamp ( "updated_at" ) );
            }
            if(rs.getString ( "updated_by" ) !=null){
                categories.setUpdated_at ( rs.getTimestamp ( "updated_by" ) );
            }
            return categories;
        }catch (SQLException e){
            return null;
        }
    }
}
