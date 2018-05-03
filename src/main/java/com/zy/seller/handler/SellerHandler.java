package com.zy.seller.handler;

import com.zy.index.entity.Flower;
import com.zy.index.entity.Material;
import com.zy.index.entity.Type;
import com.zy.index.entity.Usage;
import com.zy.index.mapper.FlowerMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.util.*;

@RequestMapping("/seller")
@Controller
public class SellerHandler {
    private ApplicationContext applicationContext;
    SellerHandler(){
        applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    }
    @RequestMapping("/home")
    public String sellerHome(){
        return "seller/index";
    }

    @RequestMapping(value = "/addFlower",method = RequestMethod.GET)
    public String addFlower(Map<String,Object> map) throws Exception {
        FlowerMapper flowerMapper= (FlowerMapper) applicationContext.getBean("flowerMapper");
        List<Type> types=flowerMapper.getTypes();
        List<Material> materials=flowerMapper.getMaterials();
        List<Usage> usages=flowerMapper.getUsages();
        map.put("types",types);
        map.put("materials",materials);
        map.put("usages",usages);
        return "seller/addFlower";
    }

    @ResponseBody
    @RequestMapping(value = "/doAddFlower",method = RequestMethod.POST)
    public String addFlower(@RequestParam("name") String name,@RequestParam("price") String price)throws Exception{

        System.out.println(name);
        System.out.println(price);
        //上传图片业务处理
//        Part part = request.getPart("image");//前台的文件标签的name,若ajax直接提交表单，这里无法获取
//        String file = part.getHeader("Content-Disposition");
//        //获取文件名
//        String fileName = file.substring(file.lastIndexOf("=") + 2, file.length() - 1);
//        String img="";
//        if(!fileName.equals("")){         //这里判断是否上传了图片
//            fileName=new Date().getTime()+"_"+new Random().nextInt(1000)+fileName;  //防止图片重名
//            String relativePath = "/assets/FSimg/";      //图片上传到Tomcat相对本项目的路径
//            String basePath = request.getSession().getServletContext().getRealPath("");  //项目根目录
//            String absolutePath=basePath+relativePath+fileName; //保存在服务器绝对路径
//            //上传文件到部署路劲
//            part.write(absolutePath);
//            img=relativePath+fileName;
//        }
//        flower.setImgurl(img);
        FlowerMapper flowerMapper= (FlowerMapper) applicationContext.getBean("flowerMapper");
       // flowerMapper.insertFlower(flower);
        Map map=new HashMap();
        map.put("status","1");
        map.put("data","添加成功");
        return "";
    }


    @RequestMapping("/showAllFlowers")
    public String showAllFlowers(){
        return "seller/showAllFlowers";
    }

    @RequestMapping("/showOrders")
    public String showOrders(){
        return "seller/showOrders";
    }
    @RequestMapping("passwordPage")
    public String passwordPage(){
        return "seller/passwordPage";
    }
}
