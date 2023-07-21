/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package clases;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "SvEliminar", urlPatterns = {"/eliminar"})
public class SvEliminar extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            String sql = "delete from clientes where id=?;";
            Connection con = Conexion.getConnection();
            PreparedStatement csql = con.prepareStatement(sql);
            csql.setInt(1,Integer.parseInt(request.getParameter("id")));
            csql.executeUpdate();
            csql.close();
            con.close();
        
            
        } catch (SQLException ex) {
            throw new RuntimeException("Error al eliminar el registro", ex);
        }
        response.sendRedirect(getServletContext().getContextPath()+"/clientes");
    }
}
