package com.ctpconsultores.tienda.dao;

import com.ctpconsultores.tienda.servlet.LoginServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {

    public String validarLogin(String usuario, String clave) {

        String repuesta = null;
        Connection cnn = null;

        try {

            Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "mysql");

            Statement st = cnn.createStatement();

            StringBuilder sql = new StringBuilder("SELECT * FROM USUARIO");
            sql.append(" WHERE NOMUSUARIO ='").append(usuario).append("'");
            sql.append(" AND CLAVEUSUARIO ='").append(clave).append("'");

            ResultSet rs = st.executeQuery(sql.toString());
            if (rs.next()) {
                repuesta = rs.getString("nomcompleto");
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

        return repuesta;
    }

}
