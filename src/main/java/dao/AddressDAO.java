package dao;

import db.JDBIConnector;
import model.Address;

import java.util.List;
import java.util.stream.Collectors;

public class AddressDAO {
    public List<Address> getAddressListByUserId(int userId) {
        List<Address> addresses = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM address WHERE user_id = :userId")
                        .bind("userId", userId)
                        .mapToBean(Address.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return addresses;
    }
}
