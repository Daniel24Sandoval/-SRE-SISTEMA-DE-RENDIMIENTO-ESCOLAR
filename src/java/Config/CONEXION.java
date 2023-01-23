package Config;
import Modelo.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
 
 
 
public class CONEXION {
 /**
 *
 * @author DanielSan
 */
     public static Connection con;
    private static String bd="src-utpv2";
    public static String usuario="root";
    public static String pass="";
    public static String url="jdbc:mysql://localhost/"+bd;
    
    public static Connection abrir(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,usuario,pass);
        }catch(Exception e){
            System.out.println("Error en la conexión");
        }
        return con;
    }
    
    public static void cerrar(){
        try{
            if(con!=null)
                con.close();
        }catch(Exception e){
            System.out.println("Error: No se logró cerrar la conexión"+e);
        }
    }
}
    