package com.ctpconsultores.tienda.servlet;

import com.ctpconsultores.tienda.dto.ProductoDTO;
import com.ctpconsultores.tienda.service.impl.ProductServiceImpl;
import com.ctpconsultores.tienda.service.ProductoService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductoServlet", urlPatterns = {"/ProductoServlet"})
public class ProductoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion") == null ? "" : request.getParameter("accion");

        switch (accion) {
            case "listar":
                ProductServiceImpl pservice = new ProductServiceImpl();
                List<ProductoDTO> lista = pservice.obtenerProductos();

                //Llamar al jsp que muestre los productos
                request.setAttribute("listaProductos", lista);//Variable a nivel request
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/productoLista.jsp");
                rd.forward(request, response);
                break;
            case "mod":

                ProductoService pservice2 = new ProductServiceImpl();
                int id = Integer.parseInt(request.getParameter("id"));
                ProductoDTO productoMod = pservice2.obtenerProducto(id);

                //poner en memoria
                request.setAttribute("producto", productoMod);
                RequestDispatcher rdMod = getServletContext().getRequestDispatcher("/admin/productoDatos.jsp");
                rdMod.forward(request, response);

                break;
            case "ins":
                RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/admin/productoDatos.jsp");
                rd1.forward(request, response);
                break;
            case "insGrabar":

                ProductoDTO producto = new ProductoDTO(0,
                        request.getParameter("txtNombreProducto"),
                        Double.parseDouble(request.getParameter("txtPrecio")),
                        Integer.parseInt(request.getParameter("txtDescuento")),
                        Integer.parseInt(request.getParameter("cmbCategoria")),
                        request.getParameter("txtImagen")
                );

                ProductServiceImpl ps = new ProductServiceImpl();
                boolean rpta = ps.insertarProducto(producto);

                if (rpta) {
                    request.setAttribute("listaProductos", ps.obtenerProductos());//Variable a nivel request
                    RequestDispatcher rd2 = getServletContext().getRequestDispatcher("/admin/productoLista.jsp");
                    rd2.forward(request, response);
                } else {
                    request.setAttribute("msgError", "Error al insertar");//Variable a nivel request
                    RequestDispatcher rd3 = getServletContext().getRequestDispatcher("/admin/productoDatos.jsp");
                    rd3.forward(request, response);
                }

                break;
            default:
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
