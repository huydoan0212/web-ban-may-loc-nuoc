package web.service;

import web.bean.Product;
import web.dao.ProductDAO;

import java.util.List;

public class ProductService {
    private static ProductService instance;
    public static  ProductService getInstance(){
        if (instance == null)
            instance = new ProductService();
        return instance;
    }
    public List<Product> getAll(){
        return ProductDAO.getAll();
    }
    public Product getById(int id){
        return ProductDAO.getById(id);
    }

//    public static void main(String[] args) {
//        List<Product> all = ProductService.getInstance().getAll();
//        System.out.println(all);
//    }

}
