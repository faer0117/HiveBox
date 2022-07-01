package jdbc.dao;

import jdbc.javabean.User;
import jdbc.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class Users_Select {
    public static List<User> FindALL() throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from Users;";
        List<User> list = (List) runner.query(sql, new BeanListHandler(User.class));
        for (User user : list) {
            System.out.println(user.getUserName() + "," + user.getPassword() + "," + user.getSex() + "," + user.getPhoneNumber()
                    + "," + user.getAddress() + "," + user.getEmail() + "," + user.getEducation() + "," + user.getJob());
        }
        return list;
    }

    public static User Find(String name) throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from Users where UserName = '" + name + "';";
        User user = runner.query(sql, new BeanHandler<>(User.class));
        return user;
    }

    public static boolean checkUser(String name, String password) throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());

        String sql = "SELECT * FROM Users WHERE UserName='" + name + "'";
        User user = runner.query(sql, new BeanHandler<>(User.class));
//        System.out.println(user.toString());
        if (password.equals(user.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

}
