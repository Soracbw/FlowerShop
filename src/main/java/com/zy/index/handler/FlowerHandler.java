package com.zy.index.handler;

import com.zy.index.entity.Material;
import com.zy.index.entity.Type;
import com.zy.index.entity.Usage;
import com.zy.index.mapper.FlowerMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@RequestMapping("/flower")
@Controller
public class FlowerHandler {
    private ApplicationContext applicationContext;
    FlowerHandler(){
        applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    }

    @ResponseBody
    @RequestMapping("/getTypes")
    public List<Type> getTypes() throws Exception {
        FlowerMapper flowerMapper= (FlowerMapper) applicationContext.getBean("flowerMapper");
        List<Type> types=flowerMapper.getTypes();
        System.out.println(types);
        return types;
    }
    @ResponseBody
    @RequestMapping("/getMaterials")
    public List<Material> getMaterials() throws Exception {
        FlowerMapper flowerMapper= (FlowerMapper) applicationContext.getBean("flowerMapper");
        List<Material> materials=flowerMapper.getMaterials();
        System.out.println(materials);
        return materials;
    }
    @ResponseBody
    @RequestMapping("/getUsages")
    public List<Usage> getUsages() throws Exception {
        FlowerMapper flowerMapper= (FlowerMapper) applicationContext.getBean("flowerMapper");
        List<Usage> usages=flowerMapper.getUsages();
        System.out.println(usages);
        return usages;
    }

}
