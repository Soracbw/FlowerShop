package com.zy.index.entity;

public class Flower {
    int id;
    String name;
    String description;
    String detail;
    int usage_id;
    int material_id;
    int type_id;
    int sller_id;
    String imgurl;
    double price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getUsage_id() {
        return usage_id;
    }

    public void setUsage_id(int usage_id) {
        this.usage_id = usage_id;
    }

    public int getMaterial_id() {
        return material_id;
    }

    public void setMaterial_id(int material_id) {
        this.material_id = material_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public int getSller_id() {
        return sller_id;
    }

    public void setSller_id(int sller_id) {
        this.sller_id = sller_id;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Flower{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", detail='" + detail + '\'' +
                ", usage_id=" + usage_id +
                ", material_id=" + material_id +
                ", type_id=" + type_id +
                ", sller_id=" + sller_id +
                ", imgurl='" + imgurl + '\'' +
                ", price=" + price +
                '}';
    }
}
