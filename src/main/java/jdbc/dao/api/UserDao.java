package jdbc.dao.api;

import jdbc.javabean.User;

import java.sql.Connection;
import java.util.List;

public interface UserDao {
    /*
    将user对象添加到user表中
     */
    int insert(Connection connection, User user);
    /*
    根据指定的username删除一条记录
     */
    int deleteById(Connection connection,String username);
    /*
    根据传入的user对象，修改表中的数据
     */
    int update(Connection connection,User user);
    /*
    根据指定的username查询数据库中的数据
     */
    User getUserByName(Connection connection,String username);

    /*
        查询数据库中所有的对象构成的集合
         */
    List<User> getAll(Connection connection);
    /*
    根据传入的username和password验证用户 是否存在
     */
    Boolean checkUser(Connection connection,String username,String password);
    /*
    用户注册传入用户名密码手机号，进行注册
     */
//    Boolean login(Connection connection,String username,String password,String phonenumber);
}
