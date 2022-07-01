package Filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(
        filterName = "LoginFilter",
        urlPatterns = "*.jsp"
)
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        //2.获取请求资源路径
        String requestURI = ((HttpServletRequest) request).getRequestURI();
        if (requestURI.contains("index.jsp")) {
            chain.doFilter(request, response);
        } else {
            //4.判断是否登录
            Object user = ((HttpServletRequest) request).getSession().getAttribute("userName");
            if (user != null) {
                //已登录，放行
                chain.doFilter(request, response);
            } else {
                //未登录，跳转登陆页面
                request.getRequestDispatcher("login_register.jsp").forward(request, response);
            }

        }


    }
}
