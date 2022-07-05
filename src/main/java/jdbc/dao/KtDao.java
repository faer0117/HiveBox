package jdbc.dao;


import jdbc.javabean.Tbiao;
import jdbc.util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.SQLException;
import java.util.List;

public class KtDao {

public JSONArray ktcom() throws SQLException {
    QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
    JSONArray jsonArray = new JSONArray();
    String sql = "SELECT\n" +
            "\tCOUNT(*) AS number,\n" +
            "\tCourierCompany \n" +
            "FROM\n" +
            "\torders \n" +
            "GROUP BY\n" +
            "\tCourierCompany";
    List<Tbiao> tbiaos = queryRunner.query(sql,new BeanListHandler<>(Tbiao.class));
    for (Tbiao t:tbiaos
         ) {
        JSONObject jsonObject = new JSONObject();

        jsonObject.put("name",t.getCourierCompany());
        jsonObject.put("value",t.getNumber());
        jsonArray.add(jsonObject);
    }
    return jsonArray;
}
}
