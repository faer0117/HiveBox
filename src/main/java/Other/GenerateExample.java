package Other;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GenerateExample {

    public static String time() {
        //使用Date创建日期对象
        Date date = new Date();
//        System.out.println("当前的日期是------>" + date);
        /**
         * 创建格式化时间日期类
         */
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

//        System.out.println("格式化后的时间------->" + format.format(date));
        return format.format(date);
    }

    public static String OrdersNumber(String CourierCompany) {
        //使用Date创建日期对象
        Date date = new Date();

        //格式化订单号数字部分为当前时间（年月日时分）
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
        //订单号头部为快递公司首字母
        String cp;
        if(CourierCompany.equals("顺丰快递"))
        {
            cp = "SF";
        }else if (CourierCompany.equals("中通快递"))
        {
            cp = "ZT";
        }else if (CourierCompany.equals("圆通快递"))
        {
            cp = "YT";
        }else if (CourierCompany.equals("韵达快递"))
        {
            cp = "YD";
        }else if (CourierCompany.equals("极兔快递"))
        {
            cp = "JT";
        }else if (CourierCompany.equals("EMS特快"))
        {
            cp = "EMS";
        }else {
            cp = "OR";
        }
        String ordnum = cp+format.format(date);
        return ordnum;
    }

    public static Double price(String weight){
        double w = Double.parseDouble(weight)-1;

        Double orderPrice = 8 + w*1;
        return orderPrice;
    }
}
