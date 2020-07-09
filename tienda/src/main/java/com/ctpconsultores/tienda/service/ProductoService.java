/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ctpconsultores.tienda.service;

import com.ctpconsultores.tienda.dto.ProductoDTO;
import java.util.List;

public interface ProductoService 
{
    
    public List<ProductoDTO> obtenerProductos();

    public boolean insertarProducto(ProductoDTO producto);
    
    public ProductoDTO obtenerProducto(int id);
    
    
}
