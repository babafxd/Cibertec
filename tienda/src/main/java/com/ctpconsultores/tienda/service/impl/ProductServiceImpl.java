/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ctpconsultores.tienda.service.impl;

import com.ctpconsultores.tienda.dao.impl.ProductoDAOImpl;
import com.ctpconsultores.tienda.dao.ProductoDAO;
import com.ctpconsultores.tienda.dto.ProductoDTO;
import com.ctpconsultores.tienda.service.ProductoService;
import java.util.List;

/**
 *
 * @author MarcoHuawei
 */
public class ProductServiceImpl implements ProductoService {

    @Override
    public List<ProductoDTO> obtenerProductos() {
        ProductoDAO dao = new ProductoDAOImpl();
        return dao.obtenerProductos();
    }

    @Override
    public boolean insertarProducto(ProductoDTO producto) {
        ProductoDAO dao = new ProductoDAOImpl();
        return dao.insertarProducto(producto);
    }

    @Override
    public ProductoDTO obtenerProducto(int id) {
        ProductoDAO dao = new ProductoDAOImpl();
        return dao.obtenerProducto(id);
    }

}
