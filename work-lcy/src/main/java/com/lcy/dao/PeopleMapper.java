package com.lcy.dao;

import com.lcy.bean.People;
import java.util.List;

public interface PeopleMapper {
    int deleteByPrimaryKey(Integer no);

    int insert(People record);

    People selectByPrimaryKey(Integer no);

    List<People> selectAll();

    int updateByPrimaryKey(People record);

    int getCount();

    List<People> selectLike(String name);
}