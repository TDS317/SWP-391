/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Order {

    private int OrderID;
    private User1 u;
    private String OrderDate;
    private String ShipDate;
    private String TotalPrice;
    private String Status;
    private String PaymentType;
    private String ShipAddress;

    public Order() {
    }

    public Order(int OrderID, User1 u, String OrderDate, String ShipDate, String TotalPrice, String Status, String PaymentType, String ShipAddress) {
        this.OrderID = OrderID;
        this.u = u;
        this.OrderDate = OrderDate;
        this.ShipDate = ShipDate;
        this.TotalPrice = TotalPrice;
        this.Status = Status;
        this.PaymentType = PaymentType;
        this.ShipAddress = ShipAddress;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public User1 getU() {
        return u;
    }

    public void setU(User1 u) {
        this.u = u;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public String getShipDate() {
        return ShipDate;
    }

    public void setShipDate(String ShipDate) {
        this.ShipDate = ShipDate;
    }

    public String getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(String TotalPrice) {
        this.TotalPrice = TotalPrice;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getPaymentType() {
        return PaymentType;
    }

    public void setPaymentType(String PaymentType) {
        this.PaymentType = PaymentType;
    }

    public String getShipAddress() {
        return ShipAddress;
    }

    public void setShipAddress(String ShipAddress) {
        this.ShipAddress = ShipAddress;
    }

    @Override
    public String toString() {
        return "Order{" + "UserName=" + u.getUserName() + ", OrderDate=" + OrderDate + ", ShipDate=" + ShipDate + ", TotalPrice=" + TotalPrice + ", Status=" + Status + ", PaymentType=" + PaymentType + ", ShipAddress=" + ShipAddress + '}';
    }

}
