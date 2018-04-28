package com.zy.index.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@RequestMapping("/index")
@Controller
public class IndexHandler {
    @RequestMapping("/index")
    public String index(){
        System.out.println("转到主页！");
        return "index/index";
    }
    @RequestMapping("/login")
    public ModelAndView login(String identity){
        System.out.println(identity);
        String viewName="index/login";
        ModelAndView modelAndView=new ModelAndView(viewName);
        if ("customer".equals(identity)) {
            identity = "用户";
        } else if ("seller".equals(identity)) {
            identity = "商家";
        } else {
            identity = "系统管理员";
        }
        modelAndView.addObject("identity",identity);
        return modelAndView;
    }

    @RequestMapping("/register")
    public String register(String identity, Map<String,Object> map){
        System.out.println(identity);
        if ("customer".equals(identity))
            identity = "用户";
         else
             identity = "商家";
         map.put("identity",identity);
        System.out.println("转到注册页！");
        return "index/register";
    }

    @RequestMapping("/orderDetail")
    public String orderDetail(){
        System.out.println("转到订单详情页！");
        return "customer/orderDetail";
    }


}
