package jdbc.dao;

import jdbc.utils.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;

import java.sql.SQLException;

public class Users_Insert {

    public static Boolean InsertUser(String name,String phonenumber,String password) throws SQLException {
        // 创建QueryRunner对象
        QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
        try {
            String sql = "insert into Users (UserName,PhoneNumber,Password) values ('"+name+"','"+phonenumber+"','"+password+"');";
            int num = runner.update(sql);
            if(num>0){
                System.out.println("注册成功");
                return true;
            }else {
                System.out.println("注册失败");
                return false;
            }
        }catch (SQLException e){
            System.out.println("用户存在");
            return false;
        }
    }
}
