package web.dao;

import web.bean.Product;
import web.db.JDBIConnector;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class ProductDAO {
    public static List<Product> getAll(){
        List<Product> products = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from products")
                        .mapToBean(Product.class).stream().collect(Collectors.toList())
        ));
        return products;
    }
    public static Product getById(int id){
        Optional<Product> product = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select * from products where id = :id").bind("id", id)
                        .mapToBean(Product.class).stream().findFirst()
        ));
        return product.isEmpty()?null:product.get();
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        System.out.println(productDAO.getAll());
    }
}

