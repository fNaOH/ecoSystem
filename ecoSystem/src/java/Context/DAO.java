/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.account;
import Model.product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<product> getAllProduct() {
        List<product> list = new ArrayList<>();
        String sql = "select * from products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        new product(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getInt(3),
                                rs.getDouble(4),
                                rs.getString(5),
                                rs.getString(6),
                                rs.getString(7),
                                rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<product> getTop6() {
        List<product> list = new ArrayList<>();
        String sql = "select top 6 * from products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        new product(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getInt(3),
                                rs.getDouble(4),
                                rs.getString(5),
                                rs.getString(6),
                                rs.getString(7),
                                rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<product> getLast6() {
        List<product> list = new ArrayList<>();
        String query = "select top 6 * from products\n"
                + "order by product_id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }

        return null;
    }

//    public List<product> getAllCategory() {
//        List<product> list = new ArrayList<>();
//        String query = "select category from products";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new product(
//                        rs.getInt(1),
//                        rs.getString(2)));
//            }
//        } catch (Exception e) {
//
//        }
//        return list;
//    }
    public List<product> getProByCate(String category_id) {
        List<product> list = new ArrayList<>();
        String query = "select * from products\n"
                + "where category_name = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public product getProById(String product_id) {

        String query = "select * from products\n"
                + "where product_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;

    }

    public int getTotalProduct() {
        String query = "select count(*) from products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }

        return 0;
    }

    public List<product> pageProduct(int index) {
        List<product> list = new ArrayList<>();
        String query = "select * from products\n"
                + "order by product_id\n"
                + "offset ? rows fetch next 12 rows only";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 12);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        new product(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getInt(3),
                                rs.getDouble(4),
                                rs.getString(5),
                                rs.getString(6),
                                rs.getString(7),
                                rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public account login(String username, String password) {
        String query = "select  * from accounts\n"
                + "where username = ?\n"
                + "and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
