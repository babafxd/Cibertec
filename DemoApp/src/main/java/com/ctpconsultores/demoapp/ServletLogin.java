/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ctpconsultores.demoapp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionEvent;

@WebServlet(name = "ServletLogin", urlPatterns = {"/Login"})
public class ServletLogin extends HttpServlet
        implements HttpSessionActivationListener {

    private static int ctos_users = 0;

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String target = "/login.jsp";

        if (request.getParameter("usuario").equals("admin") && request.getParameter("password").equals("123")) {

            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", "Marco Saavedra");

            HttpSessionEvent se = new HttpSessionEvent(session);
            sessionDidActivate(se);
            target = "/index.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(target);
            dispatcher.forward(request, response);

        } else {

            //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(target);
            //dispatcher.forward(request, response);
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\">(function () {alert('Usuario o contraseña incorrectos');})();</script>");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            dispatcher.include(request, response);

        }

    }

    @Override
    public void sessionDidActivate(HttpSessionEvent se) {
        ++ctos_users;
        System.out.println("Cantidad de usuarios que ingresaron: " + ctos_users);
    }

    @Override
    public void sessionWillPassivate(HttpSessionEvent se) {
    }
    // <editor-fold defaultstate="collapsed" desc="doGet y doPost">

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
