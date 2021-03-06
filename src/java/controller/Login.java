/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Database.DataBase;
import generar.Exception_Exception;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author axolotech
 */
public class Login extends HttpServlet {

   

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
                DataBase db = new DataBase();
        String usuario = request.getParameter("username");
        String contrasena = request.getParameter("password");//En esta parte se quitó el método de cifrado
        String Usu = "";
        HttpSession sesi = request.getSession();
        try{
            db.connect();
            ResultSet rs = db.query("Select * from usuario where (correo = '"+usuario+"' or usuario='"+usuario+"') and pass = '"+contrasena+"';");
            response.setContentType("text/html;charset=UTF-8");
            if (rs.next()){
                String username = rs.getString("usuario");
                String correo = rs.getString("correo");
                String id = rs.getString("idUsuario");
                String pass = rs.getString("pass");
                String date = Long.toString(sesi.getLastAccessedTime());
                
                try{
                     Login l = new Login();
                sesi.setAttribute("ID", l.generar(correo,id,username, date));
                sesi.setAttribute("Email", correo);
                sesi.setAttribute("username", username);
                sesi.setAttribute("pass", pass);
                sesi.setAttribute("idUsuario", id);
                    System.out.println("id: " + sesi.getAttribute("ID").toString());
                    System.out.println("usuario: " + sesi.getAttribute("username").toString());
                }
                catch (Exception e){
                    System.out.println(e);
                }
                RequestDispatcher rd = request.getRequestDispatcher("./jsp/MISOBRAS/MisObras.jsp");
                rd.forward(request, response);
            }
            else{
                System.out.println("No esta el usuario registrado");
                 RequestDispatcher rd = request.getRequestDispatcher("./jsp/Login.jsp");
                rd.forward(request, response);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }

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

    
    private static String generar(java.lang.String correo, java.lang.String id, java.lang.String username, java.lang.String hora) throws Exception_Exception {
        generar.Generar_Service service = new generar.Generar_Service();
        generar.Generar port = service.getGenerarPort();
        return port.generar(correo, id, username, hora);
    }

    private static String cifrado(java.lang.String contra) {
        paquete.Servicio_Service service = new paquete.Servicio_Service();
        paquete.Servicio port = service.getServicioPort();
        return port.cifrado(contra);
    }
  


}
