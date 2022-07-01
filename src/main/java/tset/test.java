package tset;

import Other.GenerateExample;
import jdbc.dao.Orders_Insert;
import jdbc.dao.Orders_Select;
import jdbc.dao.Users_Delete;
import jdbc.dao.Users_Select;
import jdbc.javabean.Order;
import jdbc.javabean.User;
import org.junit.Test;

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

}
