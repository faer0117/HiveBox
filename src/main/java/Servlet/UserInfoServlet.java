package Servlet;

import jdbc.dao.Users_Select;
import jdbc.javabean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UserInfoServlet", value = "/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
//        session.getAttribute("userName");
        User user = new User();
        try {
            user = Users_Select.Find((String) session.getAttribute("userName"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("user",user);
        System.out.println("user返回成功");
        response.sendRedirect("myinfo.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
