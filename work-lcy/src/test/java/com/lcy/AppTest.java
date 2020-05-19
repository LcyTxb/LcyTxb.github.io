package com.lcy;

import static org.junit.Assert.assertTrue;

import com.lcy.service.PeopleService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        ClassPathXmlApplicationContext as = new ClassPathXmlApplicationContext("applicationContext.xml");
        PeopleService accountService = (PeopleService) as.getBean("peopleServiceImpl");
        int count = accountService.getCount();
        System.out.println(count);

    }
}
