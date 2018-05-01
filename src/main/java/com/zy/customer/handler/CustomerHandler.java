package com.zy.customer.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customer")
@Controller
public class CustomerHandler {
    @RequestMapping("home")
    public String customerHome(){
        return "customer/index";
    }
}
