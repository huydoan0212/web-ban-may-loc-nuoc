package dao;

import db.JDBIConnector;
import model.Contact;
import model.Product;

import java.util.stream.Collectors;

public class ContactDAO {
    public static void insertContact( String name, String email, String phone_number, String content) {
        JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO contacts( name, email, phone_number, content) " +
                                "VALUES ( :name, :email, :phone_number, :content)")
                        .bind("name", name)
                        .bind("email", email)
                        .bind("phone_number", phone_number)
                        .bind("content", content)
                        .execute());

    }

}
