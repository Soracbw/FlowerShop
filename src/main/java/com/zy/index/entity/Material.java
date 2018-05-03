package com.zy.index.entity;

public class Material {
    int id;
    String material;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    @Override
    public String toString() {
        return "Material{" +
                "id=" + id +
                ", material='" + material + '\'' +
                '}';
    }
}
