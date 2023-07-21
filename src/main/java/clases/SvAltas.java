package clases;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "SvAltas", urlPatterns = {"/altas"})
public class SvAltas extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*Cliente cliente = new Cliente();
        cliente.setNombre (request.getParameter("nombre"));
        cliente.setApellido (request.getParameter("apellido"));
        cliente.setDomicilio (request.getParameter("domicilio"));*/
        try {
            
            String sql="INSERT INTO clientes VALUES (null,?,?,?)";
            Connection con = Conexion.getConnection();
            PreparedStatement csql = con.prepareStatement(sql);
            csql.setString(1, request.getParameter("nombre"));
            csql.setString(2, request.getParameter("apellido"));
            csql.setString(3, request.getParameter("domicilio"));
            /*csql.setString(1, cliente.getNombre());
            csql.setString(2, cliente.getApellido());
            csql.setString(3, cliente.getDomicilio());*/
            csql.executeUpdate();
            csql.close();
            con.close();
            
        } catch (SQLException ex) {
             throw new RuntimeException("Error al agregar registroL", ex);
        }
        response.sendRedirect(getServletContext().getContextPath()+"/clientes");//simula como que el usuario hizo clic en ver clientes
    }


}
