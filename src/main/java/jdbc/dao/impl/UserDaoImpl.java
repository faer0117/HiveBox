package jdbc.dao.impl;

import jdbc.dao.api.UserDao;
import jdbc.javabean.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public int insert(Connection connection, User user) {
        QueryRunner queryRunner = new QueryRunner();
        String sql="insert into Users values(?,?,?,?,?,?,?,?,?)";
        int insertCount = 0;
        try {
            insertCount = queryRunner.update(connection,sql,user.getUserName(),user.getPassword(),user.getSex(),user.getPhoneNumber(),user.getEmail(),user.getAddress(),user.getEducation(),user.getBirthday(),user.getJob());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return insertCount;
    }

    @Override
    public int deleteById(Connection connection, String username) {
        return 0;
    }

    @Override
    public int update(Connection connection, User user) {
        return 0;
    }

    @Override
    public User getUserByName(Connection connection, String username) {
        QueryRunner runner = new QueryRunner();
        String sql = "select * from Users where UserName = ?;";
        BeanHandler<User> handler = new BeanHandler<>(User.class);
        User user = null;
        try {
            user = runner.query(connection,sql,handler,username);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public List<User> getAll(Connection connection) {
        QueryRunner queryRunner = new QueryRunner();
        String sql ="select * from Users";
        BeanListHandler<User> listHandler = new BeanListHandler<>(User.class);
        List<User> userList = null;
        try {
            userList = queryRunner.query(connection,sql,listHandler);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return userList;
    }

    @Override
    public Boolean checkUser(Connection connection, String username, String password) {
        QueryRunner queryRunner = new QueryRunner();
        String sql = "SELECT * FROM Users WHERE UserName=?";
        BeanHandler<User> handler = new BeanHandler<>(User.class);
        User user = null;
        try {
            user = queryRunner.query(connection,sql,handler,username);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        System.out.println(user.toString());
        if (password.equals(user.getPassword())) {
             return true;
        }else {
            return false;
        }
    }
}
