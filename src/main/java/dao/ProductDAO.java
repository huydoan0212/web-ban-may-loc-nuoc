package dao;

import db.JDBIConnector;
import model.Product;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class ProductDAO {
    public static List<Product> getAll() {
        List<Product> products = JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from products").mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }

    public static Product getById(int id) {
        Optional<Product> product = JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from products where id = :id").bind("id", id).mapToBean(Product.class).stream().findFirst()));
        return product.isEmpty() ? null : product.get();
    }

    public static List<Product> getLocNuocTheoDanhMuc(String category) {
        List<Product> products = JDBIConnector.me().withHandle((handle -> handle.createQuery("select products.id, products.category_id, products.title, products.price, products.discount_price, products.img from products inner join categorys on products.category_id = categorys.id where categorys.name = :category").bind("category", category).mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }

}
