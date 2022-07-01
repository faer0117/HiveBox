package Servlet;

import jdbc.dao.Orders_Select;
import jdbc.javabean.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "receiverOrderServlet", value = "/receiverOrderServlet")
public class receiverOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
//        session.getAttribute("userName")
        try {
            List<Order> orderList = Orders_Select.recFind((String) session.getAttribute("userName"));
            session.setAttribute("receiverorder",orderList);

            //test
            System.out.println(orderList.toString());
            for (Order order:orderList
            ) {
                System.out.println(order.getCourierNumber());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("good");
        response.sendRedirect("receiver.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
