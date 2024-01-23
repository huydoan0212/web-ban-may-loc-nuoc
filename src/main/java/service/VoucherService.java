package service;

import dao.VoucherDAO;
import model.Voucher;

import java.util.ArrayList;
import java.util.List;

public class VoucherService {
    private static VoucherService instance;

    public static VoucherService getInstance() {
        if (instance == null)
            instance = new VoucherService();
        return instance;
    }

    public ArrayList<Voucher> getVoucher() {
        return VoucherDAO.getVoucher();
    }
    public Voucher getVoucherById(int id){
        return VoucherDAO.getVoucherById(id);
    }

    public static void main(String[] args) {
        System.out.println(new VoucherService().getVoucherById(1));
    }
}
