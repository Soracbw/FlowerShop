package com.zy.index.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/index")
@Controller
public class IndexHandler {
    @RequestMapping("/index")
    public String index(){
        System.out.println("转到主页！");
        return "index/index";
    }
    @RequestMapping("/login")
    public String login(){
        System.out.println("转到登录页！");
        return "index/login";
    }
    @RequestMapping("/orderDetail")
    public String orderDetail(){
        System.out.println("转到订单详情页！");
        return "customer/orderDetail";
    }
}
