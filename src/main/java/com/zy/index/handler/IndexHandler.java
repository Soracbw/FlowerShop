package com.zy.index.handler;

import com.zy.admin.entity.Admin;
import com.zy.admin.mapper.AdminMapper;
import com.zy.customer.entity.Customer;
import com.zy.customer.mapper.CustomerMapper;
import com.zy.seller.entity.Seller;
import com.zy.seller.mapper.SellerMapper;
import com.zy.utils.MailUtils;
import com.zy.utils.MessageUtils;
import com.zy.utils.RandomCode;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import net.sf.json.JSONObject;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import static com.zy.utils.Md5.md5Password;

@RequestMapping("/index")
@Controller
public class IndexHandler {

    private ApplicationContext applicationContext;

    IndexHandler() {
        applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    }

    @RequestMapping("/index")
    public String index() {
        System.out.println("转到主页！");
        return "index/index";
    }

    @RequestMapping("/login")
    public ModelAndView login(String identity) {
        System.out.println(identity);
        String viewName = "index/login";
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("identity", identity);
        return modelAndView;
    }


    //普通账号密码登录
    @ResponseBody
    @RequestMapping("/checkLogin")
    public String checkLogin(String identity, String UserName, String PassWord, HttpSession session) throws Exception {
        Map map = new HashMap();
        map.put("status", "0");
        map.put("data", "账号或密码错误!");
        if (identity.equals("customer")) {
            CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
            Customer customer = customerMapper.getCustomer(UserName);
            if (customer!=null&&customer.getPassword().equals(md5Password(PassWord))) {
                map.put("status", "1");
                map.put("data", "用户登录成功！");
                session.setAttribute("customer", customer);
            }

        } else if (identity.equals("seller")) {
            SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
            Seller seller = sellerMapper.getSeller(UserName);
            if (seller!=null&&seller.getPassword().equals(md5Password(PassWord))) {
                map.put("status", "1");
                map.put("data", "商家登录成功！");
                session.setAttribute("seller", seller);
            }

        } else {
            AdminMapper adminMapper = (AdminMapper) applicationContext.getBean("adminMapper");
            Admin admin = adminMapper.getAdmin(UserName);
            if (admin!=null&&admin.getPassword().equals(md5Password(PassWord))) {
                map.put("status", "1");
                map.put("data", "管理员登录成功！");
                session.setAttribute("admin", admin);
            }
        }
        JSONObject msg = JSONObject.fromObject(map);
        return msg.toString();
    }

    //通过手机号登录，获取手机验证码,这里只做customer与seller的判断，admin有问题就直接修改数据库啦
    @ResponseBody
    @RequestMapping("/getPhoneCodeOnLogin")
    public String getPhoneCodeOnLogin(String phone,String identity, HttpSession session) throws Exception {
        Map map = new HashMap();
        if(identity.equals("customer")){
            CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
            Customer customer = customerMapper.getCustomer(phone);
            if(customer==null){
                map.put("status", "0");
                map.put("data", "该手机号尚未被注册，请先注册！");
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();
            }else {
                //随机生成4位验证码
                String code = RandomCode.getRandomCode();
                System.out.println(code);
                MessageUtils.sendMessage(phone, code);
                //把验证码写入session，方法注册验证
                session.setAttribute("phoneCheckCode", code);
                map.put("status", "1");
                map.put("data", "短信发送成功！");
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();
            }
        }
        else {
            SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
            Seller seller = sellerMapper.getSeller(phone);
            if (seller==null){
                map.put("status", "0");
                map.put("data", "该手机号尚未被注册，请先注册！");
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();
            }else {
                //随机生成4位验证码
                String code = RandomCode.getRandomCode();
                System.out.println(code);
                MessageUtils.sendMessage(phone, code);
                //把验证码写入session，方法注册验证
                session.setAttribute("phoneCheckCode", code);
                map.put("status", "1");
                map.put("data", "短信发送成功！");
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();
            }
        }
    }

    //检查手机验证码登录
    @ResponseBody
    @RequestMapping("/checkLoginByPhone")
    public String checkLoginByPhone(String identity,String phone,String phoneCode,HttpSession session) throws Exception {
        Map map = new HashMap();
        map.put("status", "0");
        map.put("data", "登录失败!");

        String phoneCheckCode= (String) session.getAttribute("phoneCheckCode");
        if(!phoneCode.equals(phoneCheckCode)){
            map.put("data", "验证码输入错误,登录失败!");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }
        if (identity.equals("customer")) {
            CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
            Customer customer = customerMapper.getCustomer(phone);
                map.put("status", "1");
                map.put("data", "用户登录成功！");
                session.setAttribute("customer", customer.getName());

        } else{
            SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
            Seller seller = sellerMapper.getSeller(phone);
                map.put("status", "1");
                map.put("data", "商家登录成功！");
                session.setAttribute("seller", seller.getName());
            }
        JSONObject msg = JSONObject.fromObject(map);
        return msg.toString();
    }

    @RequestMapping("/logout")
    public String logout(String identity, HttpSession session) {
        session.removeAttribute(identity);
        return "redirect:/index/index";
    }

    //只提供customer和seller的注册入口
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(String identity, Map<String, Object> map) {
        System.out.println(identity);
        map.put("identity", identity);
        System.out.println("转到注册页！");
        return "index/register";
    }

    //邮箱注册
    @ResponseBody
    @RequestMapping(value = "/registerByEmail", method = RequestMethod.POST)
    public String register(String identity, String Email, String PassWord, String emailCode, HttpSession session) throws Exception {
        Map map = new HashMap();
        map.put("status", "1");
        map.put("data", "注册成功！");
        String emailCheckCode = (String) session.getAttribute("emailCheckCode");
        System.out.println(emailCheckCode);
        if (!emailCheckCode.equals(emailCode)) {
            map.put("status", "0");
            map.put("data", "验证码输入不正确！");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }

        if (identity.equals("customer")) {
            CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
                Customer customer = new Customer();
                customer.setEmail(Email);
                customer.setPassword(md5Password(PassWord));
                customerMapper.insertByEmail(customer);
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();

        } else {
            SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
                Seller seller = new Seller();
                seller.setEmail(Email);
                seller.setPassword(PassWord);
                sellerMapper.insertByEmail(seller);
                JSONObject msg = JSONObject.fromObject(map);
                return msg.toString();
        }
    }


    @ResponseBody
    @RequestMapping(value = "/getEmailCode")
    public String getEmailCode(String email, HttpSession session) throws Exception {
        Map map = new HashMap();
        map.put("status", "1");
        map.put("data", "邮件发送成功！");

        CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
        Customer customer = customerMapper.getCustomer(email);
        SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
        Seller seller = sellerMapper.getSeller(email);
        if (customer != null || seller != null) {
            map.put("status", "0");
            map.put("data", "该邮箱已被注册！");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }
        //随机生成4位验证码
        String code = RandomCode.getRandomCode();
        System.out.println(code);
        if (MailUtils.sendMail(email, code)) {
            //把验证码写入session，方法注册验证
            session.setAttribute("emailCheckCode", code);
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        } else {
            map.put("status", "0");
            map.put("data", "邮件发送失败！");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }

    }

    @ResponseBody
    @RequestMapping("/registerByTel")
    public String registerByTel(String identity, String phone, String phonePassWord, String phoneCode,HttpSession session) throws Exception {
        Map map = new HashMap();
        map.put("status", "1");
        map.put("data", "注册成功！");
        String phoneCheckCode = (String) session.getAttribute("phoneCheckCode");
        System.out.println(phoneCheckCode);
        if (!phoneCheckCode.equals(phoneCode)) {
            map.put("status", "0");
            map.put("data", "验证码输入不正确！");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }
        if (identity.equals("customer")) {
            CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
            Customer customer = new Customer();
            customer.setTel(phone);
            customer.setPassword(md5Password(phonePassWord));
            customerMapper.insertByTel(customer);
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        } else {
            SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
            Seller seller = new Seller();
            seller.setTel(phone);
            seller.setPassword(phonePassWord);
            sellerMapper.insertByEmail(seller);
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }
    }


    @ResponseBody
    @RequestMapping("/getPhoneCodeOnRegister")
    public String getPhoneCodeOnRegister(String phone, HttpSession session) throws Exception {
        Map map = new HashMap();
        CustomerMapper customerMapper = (CustomerMapper) applicationContext.getBean("customerMapper");
        Customer customer = customerMapper.getCustomer(phone);
        SellerMapper sellerMapper = (SellerMapper) applicationContext.getBean("sellerMapper");
        Seller seller = sellerMapper.getSeller(phone);
        if (customer != null || seller != null) {
            map.put("status", "0");
            map.put("data", "该手机号已被注册！");
            JSONObject msg = JSONObject.fromObject(map);
            return msg.toString();
        }
        //随机生成4位验证码
        String code = RandomCode.getRandomCode();
        System.out.println(code);
        MessageUtils.sendMessage(phone, code);
        //把验证码写入session，方法注册验证
        session.setAttribute("phoneCheckCode", code);
        map.put("status", "1");
        map.put("data", "短信发送成功！");
        JSONObject msg = JSONObject.fromObject(map);
        return msg.toString();
    }



    @RequestMapping("/orderDetail")
    public String orderDetail() {
        System.out.println("转到订单详情页！");
        return "customer/orderDetail";
    }


}
