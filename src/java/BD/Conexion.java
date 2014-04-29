
package BD;

/**
 *
 * @author Niko
 */
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.*;
public class Conexion {
     private static Connection conexion;
     public static String message;
    public Conexion()
    {
         
    }
    public Connection Conectar() {
        //Get connection to database
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            String url="jdbc:oracle:thin:@localhost:1521:XE";
            String username= "nico";
            String pass= "admin";
            conexion =  DriverManager.getConnection(url, username, pass);
            return conexion;
        }catch(Exception e){
            message= e.getMessage();
            return null;
        }
        
    }        
    
    public void Desconectar(Connection conexion){
        try{
            conexion.close();
        }catch(SQLException e){
            System.out.println("No se pudo conectar a base de datos");
        }
    }
    
    public ResultSet sQuery(Connection con, String stmt){
        try{
            PreparedStatement pstmt= con.prepareStatement(stmt);
            return pstmt.executeQuery();
        }catch(SQLException sqle){
            System.out.println("SQLState: "+sqle.getSQLState());
            return null;
        }
    }
}
