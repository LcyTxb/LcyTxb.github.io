package com.lcy.service;

import com.lcy.bean.People;

import java.util.List;

public interface PeopleService {

    int deleteByPrimaryKey(Integer no);

    int insert(People record);

    People selectByPrimaryKey(Integer no);

    List<People> selectAll();

    int updateByPrimaryKey(People record);

    int getCount();

    List<People> selectLike(String name);

}
