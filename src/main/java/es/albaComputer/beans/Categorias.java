
package es.albaComputer.beans;

import java.io.Serializable;

/**
 *
 * @author javier
 */
public class Categorias implements Serializable{
    
    private int id;
    private String nombre;
    private String imagen;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    
}
