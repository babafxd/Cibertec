package com.ctpconsultores.tienda.dao;

import com.ctpconsultores.tienda.dto.ProductoDTO;
import java.util.List;

public interface ProductoDAO {

    public List<ProductoDTO> obtenerProductos();

    public boolean insertarProducto(ProductoDTO producto);
    
    public ProductoDTO obtenerProducto(int id);
}
