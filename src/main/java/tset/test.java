package tset;

import Other.GenerateExample;
import jdbc.dao.Orders_Insert;
import jdbc.dao.Orders_Select;
import jdbc.dao.Users_Delete;
import jdbc.dao.Users_Select;
import jdbc.dao.api.UserDao;
import jdbc.dao.impl.UserDaoImpl;
import jdbc.javabean.Order;
import jdbc.javabean.User;
import jdbc.util.JDBCUtils;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class test {
    @Test
    public void deleteTest() {
        Users_Delete d = new Users_Delete();
        try {
            System.out.println(d.DeleteUser("张三"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void priceTset() {
        System.out.println(GenerateExample.price("8.555"));

    }

    @Test
    public void InsertOrd() throws SQLException {
        Order order = new Order();

        order.setCourierCompany("圆通快递");
        order.setCourierNumber(GenerateExample.OrdersNumber("圆通快递"));
        order.setPoetTime(GenerateExample.time());
        order.setSenderName("金角大王");
        order.setSenderPhone("18056562323");
        order.setSenderAddress("泉州市丰泽区泉州师范学院");
        order.setRecepitName("妲己");
        order.setRecepitPhone("18998264268");
        order.setRecepitAddress("泉州市鲤城区华侨大学");
        order.setWeight(2.5);
        order.setAmount(GenerateExample.price("2.5"));
        order.setType("食品");
        order.setRemark("小哥，轻拿轻放");
        Orders_Insert.InsertOders(order);

    }

    @Test
    public void findallTest() throws SQLException {
        System.out.println(Users_Select.FindALL());
    }

    @Test
    public void findTest() throws SQLException {
        String s = "张健发";
        System.out.println(Users_Select.Find(s).toString());
    }

    @Test
    public void checkUserTest() throws SQLException {
        String name = "wangwu";
        String pwd = "12345";
        System.out.println(Users_Select.checkUser(name, pwd));
    }

    @Test
    public void OrderrFindAllTest() throws SQLException {
        Order order = new Order();
        order = Orders_Select.FindAll("JT202205281346");
        System.out.println(order.toString());
    }
@Test
    public void OrderFindTest() throws SQLException {
        List<Order> list = Orders_Select.sncFind("金角大王");
    for (Order order :list) {
        System.out.println(order.toString());
    }
    System.out.println("___________________________________________________________________________________________________");
    }


    @Test
    public void findalluser() throws SQLException {
      List<Order> orderList = Orders_Select.FindAllUser();
        for (Order order : orderList) {

        }
    }


    /*
    7.5改变连接池和方法之后的测试
     */
    //测试德鲁伊连接池
    @Test
    public void druidConnectionTest() throws SQLException {
        Connection connection = JDBCUtils.getConnection();

        System.out.println(connection);
    }
    //测试getById方法
    @Test
    public void ByNameTest() throws SQLException {
        UserDao userDao = new UserDaoImpl();
        Connection connection = JDBCUtils.getConnection();
        String username ="张健发";
        User user = new User();
        user = userDao.getUserByName(connection,username);
        System.out.println(user.toString());
    }
    //测试getall方法
    @Test
    public void getAllTest(){
        UserDao userDao = new UserDaoImpl();
        Connection connection = null;
        try {
            connection = JDBCUtils.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        List<User> list = userDao.getAll(connection);
        for (User user:list) {
            System.out.println(user.toString());
        }

    }

    //测试checkuser方法
    @Test
    public void checkuserTest(){
        try {
            UserDao userDao = new UserDaoImpl();
            Connection connection = JDBCUtils.getConnection();
            Boolean f;
            String username = "张健发";
            String password = "0000";
            f = userDao.checkUser(connection,username,password);
            System.out.println(f);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    //测试insert方法
    @Test
    public void insertTest(){
        int f = 0;
        try {
            UserDao userDao = new UserDaoImpl();
            Connection connection = JDBCUtils.getConnection();
            User user = new User("张三丰","123456","男","1666-01-01","18850689890","zsf@163.com","泉州市丰泽区东海湾2233号","大专","拳师");
            f = userDao.insert(connection,user);
        } catch (SQLException e) {
            throw new RuntimeException(e);

        } finally {
            if (f > 0) {
                System.out.println("成功插入"+f+"条记录");
            }else {
                System.out.println("插入失败");
            }
        }

    }
}
