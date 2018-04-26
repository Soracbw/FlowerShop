package com.zy.customer.mapper;

import com.zy.customer.pojo.Customer;

public interface CustomerMapper {
    public Customer getCustomerById(int id) throws Exception;
}
