package com.zy.customer.mapper;

import com.zy.customer.entity.Customer;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

class CustomerMapperTest {

    private ApplicationContext applicationContext;

    @BeforeEach
    void setUp() {
        applicationContext=new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    }


    @Test
    void getCustomer() throws Exception {
        CustomerMapper customerMapper= (CustomerMapper) applicationContext.getBean("customerMapper");
        Customer customer=customerMapper.getCustomerById(1);
        System.out.println(customer);
    }
}