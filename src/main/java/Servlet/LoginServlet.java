package Servlet;

import jdbc.dao.Users_Select;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
//        String code = request.getParameter("code");
        HttpSession session = request.getSession();
        //验证验证码
//        String verificationcode = (String) session.getAttribute("VerificationCode");
        //验证验证码
        // && verificationcode.equals(code)
        if (!("admin".equals(name))) {
            try {
                if (Users_Select.checkUser(name, password)) {
                    response.sendRedirect("login_success.jsp");
                    session.setAttribute("userName", name);
                    System.out.println(name + "登录");
                } else {
                    response.sendRedirect("login_register.jsp");
                    System.out.println("登录失败");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            try {
                if (Users_Select.checkUser(name, password)) {
                    response.sendRedirect("admin.jsp");
                    session.setAttribute("userName", name);
                    System.out.println("管理员登录");
                } else {
                    response.sendRedirect("login_register.jsp");
                    System.out.println("登录失败");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
