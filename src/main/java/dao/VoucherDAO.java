package dao;

import db.JDBIConnector;
import model.Product;
import model.User;
import model.Voucher;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class VoucherDAO {
    public static ArrayList<Voucher> getVoucher(){
        ArrayList<Voucher> vouchers = (ArrayList<Voucher>) JDBIConnector.me().withHandle((handle -> handle.createQuery("select * from vouchers where start_date <= :start_date and end_date >= :end_date")
                .bind("start_date", LocalDateTime.now().toString())
                .bind("end_date", LocalDateTime.now().toString())
                .mapToBean(Voucher.class).list()));
        return vouchers;
    }

    public static Voucher getVoucherById(int id){
        Optional<Voucher> voucher = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from vouchers where id = :id")
                        .bind("id", id).mapToBean(Voucher.class).stream().findFirst());
        return voucher.isEmpty() ? null : voucher.get();
    }


    public static void main(String[] args) {
        System.out.println(getVoucherById(2));
    }
}
