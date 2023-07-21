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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "SvClientes", urlPatterns = {"/clientes"})
public class SvClientes extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            request.setAttribute("listaClientes", getCliente());
            request.getRequestDispatcher("lista_clientes.jsp").forward(request, response); 
    }
    
    
    
    
    
    public List<Cliente> getCliente(){
    try{        
        ArrayList<Cliente> clientes = new ArrayList<>();
        Connection con = Conexion.getConnection();
        String sql="select * from clientes";
        PreparedStatement csql = con.prepareStatement(sql);
        ResultSet rs = csql.executeQuery();
        while (rs.next()){
            int id = rs.getInt(1);
            String nombre = rs.getString(2);
            String apellido = rs.getString(3);
            String domicilio = rs.getString(4);
            
            clientes.add (new Cliente(id, nombre, apellido, domicilio));
        }
        rs.close();
        csql.close();
        con.close();
        return clientes;
    }catch (SQLException ex) {
            throw new RuntimeException("Error al leer cliente de MySQL", ex);
    }
    
    }
}