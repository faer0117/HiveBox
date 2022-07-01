package Servlet;

import Other.GenerateExample;
import jdbc.dao.Orders_Insert;
import jdbc.javabean.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "InsertOrderServlet", value = "/InsertOrderServlet")
public class InsertOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String CourierCompany = request.getParameter("顺丰快递");
        String SenderName = request.getParameter("sname");
        String SenderPhone = request.getParameter("sphonenumber");
        String SenderAddress = request.getParameter("saddress1")+ request.getParameter("saddress2");

        String RecepitName = request.getParameter("rname");
        String RecepitPhone = request.getParameter("rphonenumber");
        String RecepitAddress = request.getParameter("raddress1")+request.getParameter("saddress2");

        String Type = request.getParameter("type");
        String Weight = request.getParameter("weight");
        String Remark = request.getParameter("remark");

        Order order = new Order();
        order.setCourierCompany("顺丰快递");
        order.setCourierNumber(GenerateExample.OrdersNumber("顺丰快递"));
        order.setPoetTime(GenerateExample.time());
        order.setWeight(Double.parseDouble(Weight));
        order.setAmount(GenerateExample.price(Weight));
        order.setType(Type);
        order.setRemark(Remark);

        order.setSenderName(SenderName);
        order.setSenderPhone(SenderPhone);
        order.setSenderAddress(SenderAddress);

        order.setRecepitName(RecepitName);
        order.setRecepitPhone(RecepitPhone);
        order.setRecepitAddress(RecepitAddress);

        System.out.println(order.toString());

        try {
            Orders_Insert.InsertOders(order);
        } catch (SQLException e) {
            e.printStackTrace();
        }

//        HttpSession session = request.getSession();
//        session.setAttribute("order",order);

        response.sendRedirect("sends.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
