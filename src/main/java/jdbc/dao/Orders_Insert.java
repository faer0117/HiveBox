package jdbc.dao;

import jdbc.javabean.Order;
import jdbc.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class Orders_Insert {
    //订单表插入
    public static Boolean InsertOders(Order order) throws SQLException {
        // 创建QueryRunner对象
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "insert into orders " +
                "values ('"
                + order.getCourierNumber() + "','" + order.getCourierCompany() + "','"
                + order.getSenderName() + "','" + order.getSenderPhone() + "','" + order.getSenderAddress() + "','"
                + order.getRecepitName() + "','" + order.getRecepitPhone() + "','" + order.getRecepitAddress() + "','"
                + order.getPoetTime() + "','" + order.getReceivingTime() + "','"+order.getAmount()+"','"+order.getCondition()+"','"+order.getType()+"','"
                +order.getWeight()+"','"+order.getRemark()+"');";
        int num = runner.update(sql);
        if (num > 0) {
            System.out.println("下单成功");
            return true;
        } else {
            System.out.println("下单失败");
            return false;
        }
    }


//    (CourierNumber,CourierCompany," +
//            "SenderName,SenderPhone,SenderAddress,RecepitName,RecepitPhone,RecepitAddress," +
//            "PoetTime,Amount,Condition,Type,Weight,Remark)



//    public static String time() {
//        //使用Date创建日期对象
//        Date date = new Date();
//        System.out.println("当前的日期是------>" + date);
//        /**
//         * 创建格式化时间日期类
//         */
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//
//        System.out.println("格式化后的时间------->" + format.format(date));
//        return format.format(date);
//    }
//
//    public static String OrdersNumber() {
//        //使用Date创建日期对象
//        Date date = new Date();
//        System.out.println("当前的日期是------>" + date);
//        //格式化订单号为当前时间（年月日时分）
//        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
//        String ordnum = format.format(date);
//        return ordnum;
//    }

}
