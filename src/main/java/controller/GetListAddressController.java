package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Address;
import service.AddressService;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "GetListAddress", value = "/get-list-address")
public class GetListAddressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);  // Forward GET requests to doPost method
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer userId = Integer.valueOf(req.getParameter("userId"));
        List<Address> addresses = AddressService.getInstance().getAddresses(userId);

        // Build the JSON response manually
        StringBuilder json = new StringBuilder();
        json.append("[");
        for (int i = 0; i < addresses.size(); i++) {
            Address address = addresses.get(i);
            json.append("{")
                    .append("\"id\":").append(address.getId()).append(",")
                    .append("\"address\":\"").append(address.getAddress()).append("\"")
                    .append("}");
            if (i < addresses.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");

        // Set the response content type to JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        // Write the JSON to the response
        PrintWriter out = resp.getWriter();
        out.write(json.toString());
        out.flush();
    }
}
