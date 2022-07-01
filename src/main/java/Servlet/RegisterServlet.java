package Servlet;

import jdbc.dao.Users_Insert;
import jdbc.dao.Users_Select;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name_register");
        String phonenumber = request.getParameter("phonenumber_register");
        String passowrd = request.getParameter("password_register1");
        HttpSession session = request.getSession();
            try {
                if (Users_Insert.InsertUser(name, phonenumber, passowrd)) {
                    response.sendRedirect("login_success.jsp");
                    session.setAttribute("userName", name);
                } else {
                    response.sendRedirect("login_register.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }


    }
}
