package dao;

import db.JDBIConnector;
import model.AbsDao;
import model.Contact;
import model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class ContactDAO extends AbsDao<Contact> {
    public void insertContact(String name, String email, String phone_number, String content) {
        JDBIConnector.me().withHandle(handle ->
                handle.createUpdate("INSERT INTO contacts( name, email, phone_number, content) " +
                                "VALUES ( :name, :email, :phone_number, :content)")
                        .bind("name", name)
                        .bind("email", email)
                        .bind("phone_number", phone_number)
                        .bind("content", content)
                        .execute());
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setPhone_number(phone_number);
        contact.setContent(content);
        super.insert(contact);

    }

    public static List<Contact> getAllContacts() {
        List<Contact> contacts = JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from contacts")
                .mapToBean(Contact.class).stream().collect(Collectors.toList())));
        return contacts;
    }

    public static String getEmailById(int id) {
        String email = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT email FROM contacts WHERE id = ?")
                        .bind(0, id)
                        .mapTo(String.class)
                        .one()
        );
        return email;
    }

    public static void main(String[] args) {
        System.out.println(getEmailById(2));
    }
}



