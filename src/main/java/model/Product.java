package model;

import java.util.Date;

public class Product {
    private int id;
    private int category_id;
    private int type_machine_id;
    private int brand_id;
    private int sale_product_id;
    private String title;
    private int price;
    private int discount_price;
    private String description;
    private int available;
    private Date created_at;
    private Date updated_at;
    private String img;

    public Product() {
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Product(int id, int category_id, int type_machine_id, int brand_id, int sale_product_id, String title, int price, int discount_price, String description, int available, Date created_at, Date updated_at, String img) {
        this.id = id;
        this.category_id = category_id;
        this.type_machine_id = type_machine_id;
        this.brand_id = brand_id;
        this.sale_product_id = sale_product_id;
        this.title = title;
        this.price = price;
        this.discount_price = discount_price;
        this.description = description;
        this.available = available;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getType_machine_id() {
        return type_machine_id;
    }

    public void setType_machine_id(int type_machine_id) {
        this.type_machine_id = type_machine_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getSale_product_id() {
        return sale_product_id;
    }

    public void setSale_product_id(int sale_product_id) {
        this.sale_product_id = sale_product_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount_price() {
        return discount_price;
    }

    public void setDiscount_price(int discount_price) {
        this.discount_price = discount_price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }


    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category_id=" + category_id +
                ", type_machine_id=" + type_machine_id +
                ", brand_id=" + brand_id +
                ", sale_product_id=" + sale_product_id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", discount_price=" + discount_price +
                ", description='" + description + '\'' +
                ", available=" + available +
                ", created_at=" + created_at +
                ", updated_at=" + updated_at +
                ", img='" + img + '\'' +
                '}';
    }
}
