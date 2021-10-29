package com.company.model;

public class ProductModel extends AbstractModel<ProductModel>{
    private Long category_id;
    private String name;
    private String image;
    private Long price_current;
    private Long price_promo;
    private String brand;
    private String summary;
    private String content;
    private Long quantity;

    public Long getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Long category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Long getPrice_current() {
        return price_current;
    }

    public void setPrice_current(Long price_current) {
        this.price_current = price_current;
    }

    public Long getPrice_promo() {
        return price_promo;
    }

    public void setPrice_promo(Long price_promo) {
        this.price_promo = price_promo;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }
}
