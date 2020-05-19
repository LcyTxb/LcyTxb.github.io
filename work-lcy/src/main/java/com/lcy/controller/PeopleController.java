package com.lcy.controller;

import com.lcy.bean.People;
import com.lcy.service.PeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/people")
public class PeopleController {

    @Autowired
    @Qualifier("peopleServiceImpl")
    private PeopleService peopleService;

    //模糊查询
    @RequestMapping("/like")
    public String selectLise(String name,Model model) {
        List<People> people = peopleService.selectLike(name);
        System.out.println(people);
        if (people==null) {
            people = peopleService.selectAll();
            model.addAttribute("error","未查到");
        }
        int count = peopleService.getCount();
        model.addAttribute("counts",count);
        model.addAttribute("people",people);
        return "allPage";
    }


    //查询所有数据
    @RequestMapping("/all")
    public String getAll(Model model) {
        List<People> people = peopleService.selectAll();
        int count = peopleService.getCount();
        model.addAttribute("people",people);
        model.addAttribute("counts",count);
        return "allPage";
    }


    //跳转到增加页面
    @RequestMapping("/addPage")
    public String addPage() {
        return "addPage";
    }

    //增加功能
    @RequestMapping("add")
    public String addPeople(People people) {
        int insert = peopleService.insert(people);
        return "redirect:/people/all";
    }

    //跳转到修改页面
    @RequestMapping("/updatePage")
    public String updatePage(int no,Model model){
        People people = peopleService.selectByPrimaryKey(no);
        model.addAttribute("people",people);
        return "updatePage";
    }

    //修改
    @RequestMapping("/updatePeople")
    public String updatePeople(People people){
        int i = peopleService.updateByPrimaryKey(people);
        return "redirect:/people/all";
    }

    //删除功能
    @RequestMapping("/deletePeople")
    public String deletePeople(int no) {
        peopleService.deleteByPrimaryKey(no);
        return "redirect:/people/all";
    }


}
