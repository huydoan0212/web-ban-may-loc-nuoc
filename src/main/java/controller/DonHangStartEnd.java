package controller;

import model.Order;
import model.Product;
import service.PageAdminService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@WebServlet(name = "DonHangStartEnd", value = "/donHangStartEnd")
public class DonHangStartEnd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String startDate = request.getParameter("start-date");
        String endDate = request.getParameter("end-date");
        System.out.println(startDate);
        System.out.println(endDate);
        try {
            // Định dạng đầu vào
            SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
            // Định dạng đầu ra
            SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy");

            // Chuyển đổi từ chuỗi sang Date
            Date date1 = inputFormat.parse(startDate);
            Date date2 = inputFormat.parse(endDate);

            // Chuyển đổi từ Date sang chuỗi với định dạng mới
            String outputDate1 = outputFormat.format(date1);
            String outputDate2 = outputFormat.format(date2);
            System.out.println(outputDate1); // 20-01-2023
            System.out.println(outputDate2); // 23-01-2024
            request.getSession().setAttribute("outputDate1 ", outputDate1 );
            request.getSession().setAttribute("outputDate1 ", outputDate2 );
        } catch (ParseException e) {
            e.printStackTrace();
        }

        List<Order> listOderRecent = PageAdminService.getInstance().getOrderRecentStartEnd(startDate, endDate);
        request.getSession().setAttribute("listOderRecent", listOderRecent);
        System.out.println(listOderRecent);
        request.getRequestDispatcher("thongkedonhang.jsp").forward(request, response);
    }

}
