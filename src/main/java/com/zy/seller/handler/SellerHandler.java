package com.zy.seller.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/seller")
@Controller
public class SellerHandler {
    @RequestMapping("home")
    public String sellerHome(){
        return "seller/index";
    }
}
