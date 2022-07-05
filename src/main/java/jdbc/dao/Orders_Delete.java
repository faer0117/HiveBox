package jdbc.dao;

import jdbc.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class Orders_Delete {
    //实现删除订单的功能
    public static Boolean DeleteOrders() throws SQLException {
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        String sql = "";
        int num = runner.update(sql);
        if (num>0){
            return true;
        }else {
            return false;
        }
    }
}
