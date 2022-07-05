package jdbc.dao;

import jdbc.javabean.Order;
import jdbc.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class Orders_Select {
    //通过订单号查询，根据快递单号查询->订单信息
    public static Order FindAll(String CourierNumber) throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());

        String sql = "select * from Orders where CourierNumber = '" + CourierNumber + "';";

        Order order = runner.query(sql, new BeanHandler<>(Order.class));
        return order;
    }

    //根据寄件人姓名查询
    public static List<Order> sncFind(String SenderName) throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from Orders " +
                "where SenderName = '" + SenderName + "';";
        List<Order> orderList = runner.query(sql, new BeanListHandler<>(Order.class));
        return orderList;
    }
//    and `Condition` = '"+Condition+"'

    //根据寄件人姓名查询订单
    public static List<Order> recFind(String RecepitName) throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from Orders " +
                "where RecepitName = '" + RecepitName + "';";
        List<Order> orderList = runner.query(sql, new BeanListHandler<>(Order.class));
        return orderList;
    }

    public static List<Order> FindAllUser() throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "select * from Orders";
        List<Order> orderList = runner.query(sql,new BeanListHandler<>(Order.class));
        return orderList;
    }
}
