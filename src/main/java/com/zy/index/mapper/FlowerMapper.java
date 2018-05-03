package com.zy.index.mapper;


import com.zy.index.entity.Flower;
import com.zy.index.entity.Material;
import com.zy.index.entity.Type;
import com.zy.index.entity.Usage;

import java.util.List;

public interface FlowerMapper {
    public List<Type> getTypes() throws Exception;
    public List<Material> getMaterials() throws  Exception;
    public List<Usage> getUsages() throws Exception;
    public void insertFlower(Flower flower) throws Exception;
}
