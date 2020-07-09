/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ctpconsultores.tienda.dao.impl;

import com.ctpconsultores.tienda.dao.ProductoDAO;
import com.ctpconsultores.tienda.dto.ProductoDTO;
import com.ctpconsultores.tienda.servlet.LoginServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MarcoHuawei
 */
public class ProductoDAOImpl implements ProductoDAO {

    @Override
    public List<ProductoDTO> obtenerProductos() {

        List<ProductoDTO> productos = new ArrayList<ProductoDTO>();
        Connection cnn = null;

        try {

            Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "mysql");

            Statement st = cnn.createStatement();
            StringBuilder sql = new StringBuilder("SELECT * FROM PRODUCTO");
            ResultSet rs = st.executeQuery(sql.toString());
            ProductoDTO producto = null;

            while (rs.next()) {
                producto = new ProductoDTO(
                        rs.getInt("idproducto"),
                        rs.getString("nombre"),
                        rs.getInt("precio"),
                        rs.getInt("descuento"),
                        rs.getInt("idcategoria"),
                        rs.getString("imagen")
                );
                productos.add(producto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cnn != null) {
                try {
                    cnn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        }

        return productos;
    }

    @Override
    public boolean insertarProducto(ProductoDTO producto) {
        boolean seRegistro = true;

        StringBuilder sql = new StringBuilder("INSERT INTO PRODUCTO ");
        sql.append("(nombre,precio,descuento,idcategoria,imagen)");
        sql.append("VALUES (?,?,?,?,?)");
        Connection cnn = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "mysql");

            PreparedStatement st = cnn.prepareStatement(sql.toString());
            st.setString(1, producto.getNombre());
            st.setDouble(2, producto.getPrecio());
            st.setInt(3, producto.getDescuento());
            st.setInt(4, producto.getIdcategoria());
            st.setString(5, producto.getImagen());
            st.execute();

        } catch (Exception e) {
            seRegistro = false;
            e.printStackTrace();
        } finally {
            if (cnn != null) {
                try {
                    cnn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        }

        return seRegistro;
    }

    @Override
    public ProductoDTO obtenerProducto(int id) {

        ProductoDTO producto = null;
        Connection cnn = null;

        try {

            Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "mysql");

            StringBuilder sql = new StringBuilder("SELECT * FROM PRODUCTO WHERE IDPRODUCTO = ?");
            PreparedStatement st = cnn.prepareStatement(sql.toString());
            st.setInt(1, id);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                producto = new ProductoDTO(
                        rs.getInt("idproducto"),
                        rs.getString("nombre"),
                        rs.getInt("precio"),
                        rs.getInt("descuento"),
                        rs.getInt("idcategoria"),
                        rs.getString("imagen")
                );

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cnn != null) {
                try {
                    cnn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        }

        return producto;
    }
}
