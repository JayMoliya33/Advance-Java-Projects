package com.vvp.web;


public class Product 
{
     public int pid;
   public String name,description;
   public Double price;
   public int stock;

    public Product() {
    }

    public Product(int pid, String name, String description, Double price,int stock) {
        this.pid = pid;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock=stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }





}
