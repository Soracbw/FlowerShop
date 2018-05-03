package com.zy.customer.mapper;

import com.zy.customer.entity.Customer;

public interface CustomerMapper {
    public Customer getCustomer(String username) throws Exception;
    public void insertByEmail(Customer customer)throws Exception;
    public void insertByTel(Customer customer) throws Exception;

}
