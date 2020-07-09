//Posibles nombres para la entidad : Bean, DTO o entity
//Representa una tabla que queremos que viaje
package com.ctpconsultores.tienda.dto;

public class ProductoDTO {

    private int idproducto;
    private String nombre;
    private double precio;
    private int descuento;
    private int idcategoria;
    private String imagen;

    //Cosntructor por defecto
    public ProductoDTO() {
    }

    
    public ProductoDTO(int idproducto, String nombre, double precio, int descuento, int idcategoria, String imagen) {
        this.idproducto = idproducto;
        this.nombre = nombre;
        this.precio = precio;
        this.descuento = descuento;
        this.idcategoria = idcategoria;
        this.imagen = imagen;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getDescuento() {
        return descuento;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

}
