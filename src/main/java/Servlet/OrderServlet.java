package Servlet;

import jdbc.dao.Orders_Select;
import jdbc.javabean.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/OrderServlet")
public class OrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try {
            List<Order> orderList = Orders_Select.FindAllUser();
            session.setAttribute("orderList1",orderList);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("kdmg.jsp");

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
