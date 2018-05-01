package com.zy.admin.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminHandler {
    @RequestMapping("home")
    public String adminHome(){
        return "admin/index";
    }
}
