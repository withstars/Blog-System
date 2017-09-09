package com.blog.dao;

import com.blog.domain.Catalog;
import org.springframework.stereotype.Repository;

@Repository
public interface CatalogDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Catalog record);

    int insertSelective(Catalog record);

    Catalog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Catalog record);

    int updateByPrimaryKeyWithBLOBs(Catalog record);

    int updateByPrimaryKey(Catalog record);
}