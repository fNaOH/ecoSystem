/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author Asus
 */
public class order {
    private int order_id, customer_id, staff_id, order_status;
    private Date order_date, requied_date, shipping_date;

    public order() {
    }

    public order(int order_id, int customer_id, int staff_id, int order_status, Date order_date, Date requied_date, Date shipping_date) {
        this.order_id = order_id;
        this.customer_id = customer_id;
        this.staff_id = staff_id;
        this.order_status = order_status;
        this.order_date = order_date;
        this.requied_date = requied_date;
        this.shipping_date = shipping_date;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public Date getRequied_date() {
        return requied_date;
    }

    public void setRequied_date(Date requied_date) {
        this.requied_date = requied_date;
    }

    public Date getShipping_date() {
        return shipping_date;
    }

    public void setShipping_date(Date shipping_date) {
        this.shipping_date = shipping_date;
    }
    
    
}
