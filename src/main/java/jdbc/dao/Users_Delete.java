package jdbc.dao;

import jdbc.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class Users_Delete {
    public boolean DeleteUser(String name) throws SQLException {
        // 创建QueryRunner对象
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        // 写SQL语句
        String sql = "delete from Users where UserName='"+name+"'";
        // 调用方法
        int num = runner.update(sql);
        if (num > 0){
            System.out.println("删除成功！");
            return true;
        }else{
            System.out.println("删除失败！");
            return false;
        }
    }


}
