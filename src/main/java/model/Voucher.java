package model;

import java.time.LocalDateTime;
import java.util.Date;

public class Voucher {
    private int id;
    private String voucher_name;
    private String voucher_code;
    private LocalDateTime start_date;
    private LocalDateTime end_date;
    private String note;
    private double percent_decrease;

    public Voucher(int id, String voucher_name, String voucher_code, LocalDateTime start_date, LocalDateTime end_date, String note, double percent_decrease) {
        this.id = id;
        this.voucher_name = voucher_name;
        this.voucher_code = voucher_code;
        this.start_date = start_date;
        this.end_date = end_date;
        this.note = note;
        this.percent_decrease = percent_decrease;
    }

    public Voucher() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVoucher_name() {
        return voucher_name;
    }

    public void setVoucher_name(String voucher_name) {
        this.voucher_name = voucher_name;
    }

    public String getVoucher_code() {
        return voucher_code;
    }

    public void setVoucher_code(String voucher_code) {
        this.voucher_code = voucher_code;
    }

    public LocalDateTime getStart_date() {
        return start_date;
    }

    public void setStart_date(LocalDateTime start_date) {
        this.start_date = start_date;
    }

    public LocalDateTime getEnd_date() {
        return end_date;
    }

    public void setEnd_date(LocalDateTime end_date) {
        this.end_date = end_date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public double getPercent_decrease() {
        return percent_decrease;
    }

    public void setPercent_decrease(double percent_decrease) {
        this.percent_decrease = percent_decrease;
    }

    @Override
    public String toString() {
        return "Voucher{" +
                "id=" + id +
                ", voucher_name='" + voucher_name + '\'' +
                ", voucher_code='" + voucher_code + '\'' +
                ", start_date=" + start_date +
                ", end_date=" + end_date +
                ", note='" + note + '\'' +
                ", percent_decrease=" + percent_decrease +
                '}';
    }
}
