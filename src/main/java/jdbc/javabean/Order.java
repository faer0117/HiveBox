package jdbc.javabean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Order {
    private String CourierNumber;
    private String CourierCompany;

    private String SenderName;
    private String SenderPhone;
    private String SenderAddress;

    private String RecepitName;
    private String RecepitPhone;
    private String RecepitAddress;

    private String PoetTime;
    private String ReceivingTime;
    private double Weight;
    private double Amount;
    private String Type;
    private String Condition;
    private String Remark;

    public Order() {
        this.setCondition("待揽件");
        this.setReceivingTime("2099-01-01");
    }

    public String getCourierCompany() {
        return CourierCompany;
    }

    public void setCourierCompany(String courierCompany) {
        CourierCompany = courierCompany;

    }

    public String getCourierNumber() {
        return CourierNumber;
    }

    public void setCourierNumber(String courierNumber) {
        CourierNumber = courierNumber;
    }


    public String getSenderName() {
        return SenderName;
    }

    public void setSenderName(String senderName) {
        SenderName = senderName;
    }

    public String getSenderPhone() {
        return SenderPhone;
    }

    public void setSenderPhone(String senderPhone) {
        SenderPhone = senderPhone;
    }

    public String getSenderAddress() {
        return SenderAddress;
    }

    public void setSenderAddress(String senderAddress) {
        SenderAddress = senderAddress;
    }

    public String getRecepitName() {
        return RecepitName;
    }

    public void setRecepitName(String recepitName) {
        RecepitName = recepitName;
    }

    public String getRecepitPhone() {
        return RecepitPhone;
    }

    public void setRecepitPhone(String recepitPhone) {
        RecepitPhone = recepitPhone;
    }

    public String getRecepitAddress() {
        return RecepitAddress;
    }

    public void setRecepitAddress(String recepitAddress) {
        RecepitAddress = recepitAddress;
    }

    public String getPoetTime() {
        return PoetTime;
    }

    public void setPoetTime(String poetTime) {
        PoetTime = poetTime;
    }

    public String getReceivingTime() {
        return ReceivingTime;
    }

    public void setReceivingTime(String receivingTime) {
        ReceivingTime = receivingTime;
    }

    public double getWeight() {
        return Weight;
    }

    public void setWeight(double weight) {
        Weight = weight;
    }

    public double getAmount() {
        return Amount;
    }

    public void setAmount(double amount) {
        Amount = amount;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public String getCondition() {
        return Condition;
    }

    public void setCondition(String condition) {
        Condition = condition;
    }

    public String getRemark() {
        return Remark;
    }

    public void setRemark(String remark) {
        Remark = remark;
    }

    @Override
    public String toString() {
        return "Order{" +
                "CourierNumber='" + CourierNumber + '\'' +
                ", CourierCompany='" + CourierCompany + '\'' +
                ", SenderName='" + SenderName + '\'' +
                ", SenderPhone='" + SenderPhone + '\'' +
                ", SenderAddress='" + SenderAddress + '\'' +
                ", RecepitName='" + RecepitName + '\'' +
                ", RecepitPhone='" + RecepitPhone + '\'' +
                ", RecepitAddress='" + RecepitAddress + '\'' +
                ", PoetTime='" + PoetTime + '\'' +
                ", ReceivingTime='" + ReceivingTime + '\'' +
                ", Weight=" + Weight +
                ", Amount=" + Amount +
                ", Type='" + Type + '\'' +
                ", Condition='" + Condition + '\'' +
                ", Remark='" + Remark + '\'' +
                '}';
    }

}
