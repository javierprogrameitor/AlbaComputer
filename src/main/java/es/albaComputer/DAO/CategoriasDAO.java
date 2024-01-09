
package es.albaComputer.DAO;

import es.albaComputer.beans.Categorias;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javier
 */
public class CategoriasDAO {
    
    
        public List<Categorias> dameCategorias(){
        List<Categorias> categorias = new ArrayList<Categorias>();
        try{
            Connection conexion = Factory.getConnection();
            String query = "SELECT * FROM categoria";
            PreparedStatement obtenerCategorias = conexion.prepareStatement(query);
            ResultSet rs = obtenerCategorias.executeQuery();
            while(rs.next()){
                Categorias categoria = new Categorias();
                categoria.setId(rs.getInt("idCategoria"));
                categoria.setNombre(rs.getString("nombre"));
                categorias.add(categoria);
            }
            conexion.close();
        }catch(SQLException e){
            System.out.println("Error al obtener las categorias: " + e.getMessage());
        }finally{
            Factory.closeConnection();
        }
        return categorias;
    }
    
}
