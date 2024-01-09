
package es.albaComputer.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author javier
 */
public class Factory {
    
     /**
     * Objeto DataSorce de la fuente de datos
     */
    static DataSource ds = null;
    /**
     * Objeto Connection de la conexión
     */
    static Connection conexion = null;
    /**
     * Nombre del JNDI de la conexión
     */
    static final String DATASOURCE_NAME = "java:comp/env/jdbc/tienda";

    /**
     * Obtiene un hilo del almacen de conexiones a la base de datos
     * @return objeto Connection con el el hilo del almacén
     */
    public static Connection getConnection() {

        try {
            Context contextoInicial = new InitialContext();
            ds = (DataSource)contextoInicial.lookup(DATASOURCE_NAME);
            conexion = ds.getConnection();
        } catch (NamingException | SQLException e) {
            Logger.getLogger(Factory.class.getName()).log(Level.SEVERE, null, e);
        }
        return conexion;
    }

    /**
     * Abandona el hilo del almacén de conexiones de la base de datos
     */
    public static void closeConnection(){
        try {
            conexion.close();
        } catch(SQLException e){
            Logger.getLogger(Factory.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
}
