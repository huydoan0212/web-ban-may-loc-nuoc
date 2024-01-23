package dao;

import db.JDBIConnector;
import model.Comment;
import model.Product;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class ProductDAO {
    public static List<Product> getAll() {
        List<Product> products = JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from products")
                .mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }

    public static Product getById(int id) {
        Optional<Product> product = JDBIConnector.me().withHandle((handle -> handle
                .createQuery("select * from products where id = :id")
                .bind("id", id).mapToBean(Product.class).stream().findFirst()));
        return product.isEmpty() ? null : product.get();
    }

    public static List<Product> getLocNuocTheoDanhMuc(String category) {
        List<Product> products = JDBIConnector.me().withHandle((handle ->
                handle.createQuery("select products.id, products.category_id, products.title, products.price, products.discount_price, products.img from products inner join categorys on products.category_id = categorys.id where categorys.name = :category")
                        .bind("category", category)
                        .mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }
    public static List<Product> getProductByName(String title) {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM products WHERE title LIKE :title")
                        .bind("title", "%" + title + "%")
                        .mapToBean(Product.class)
                        .stream().collect(Collectors.toList()));
        return products;
    }
    public static List<Product> filterByTypeAndBrand(int brand, int type_machine_id) {
        List<Product> products = JDBIConnector.me().withHandle((handle -> handle
                .createQuery("select * from products where type_machine_id=:type_machine_id and brand_id=:brand_id")
                .bind("type_machine_id", type_machine_id)
                .bind("brand_id", brand)
                .mapToBean(Product.class).stream().collect(Collectors.toList())));
        return products;
    }

    public static void main(String[] args) {
        System.out.println(getProductByName("Máy lọc nước RO"));
    }


}
