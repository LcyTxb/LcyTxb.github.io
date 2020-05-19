package com.lcy.service.impl;

import com.lcy.bean.People;
import com.lcy.dao.PeopleMapper;
import com.lcy.service.PeopleService;

import java.util.List;

public class PeopleServiceImpl implements PeopleService {

    private PeopleMapper peopleMapper;

    public void setPeopleMapper(PeopleMapper peopleMapper) {
        this.peopleMapper = peopleMapper;
    }

    @Override
    public int deleteByPrimaryKey(Integer no) {
        return peopleMapper.deleteByPrimaryKey(no);
    }

    @Override
    public int insert(People record) {
        return peopleMapper.insert(record);
    }

    @Override
    public People selectByPrimaryKey(Integer no) {
        return peopleMapper.selectByPrimaryKey(no);
    }

    @Override
    public List<People> selectAll() {
        return peopleMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(People record) {
        return peopleMapper.updateByPrimaryKey(record);
    }

    @Override
    public int getCount() {
        return peopleMapper.getCount();
    }

    @Override
    public List<People> selectLike(String name) {
        return peopleMapper.selectLike(name);
    }
}
