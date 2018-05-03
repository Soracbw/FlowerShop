package com.zy.index.entity;

public class Usage {
    int id;
    String usage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    @Override
    public String toString() {
        return "Usage{" +
                "id=" + id +
                ", usage='" + usage + '\'' +
                '}';
    }
}
