package com.zy.seller.mapper;

import com.zy.seller.entity.Seller;

public interface SellerMapper {
    public Seller getSeller(String username) throws Exception;
    public void insertByEmail(Seller seller)throws Exception;
    public void insertByTel(Seller seller) throws Exception;
}
