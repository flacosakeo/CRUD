package clases;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {
        private static final String URL_DB="jdbc:mysql://root:@localhost:3306/personas?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    
    private static BasicDataSource dataSource;
    
    private Conexion(){
    }
    
    private static DataSource getDataSource(){
        if (dataSource==null){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");//linea que levanta el driver de sql
                dataSource=new BasicDataSource();
                dataSource.setUrl(URL_DB);
                dataSource.setInitialSize(10);
            }catch(Exception ex){
                throw new RuntimeException("Error al leer la base de datos",ex);
            }        
        }
        return dataSource;
    }
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection();
    }  
}
