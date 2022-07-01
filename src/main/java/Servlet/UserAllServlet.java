package Servlet;

import jdbc.dao.Users_Select;
import jdbc.javabean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserAllServlet", value = "/UserAllServlet")
public class UserAllServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try {
            List<User> userList = Users_Select.FindALL();
            session.setAttribute("userList",userList);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("admin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
