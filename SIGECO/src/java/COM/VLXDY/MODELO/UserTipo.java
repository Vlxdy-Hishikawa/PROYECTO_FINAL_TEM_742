package COM.VLXDY.MODELO;
/**
 *
 * @author Vlxdy Hishikawa
 */
public class UserTipo {
    private int id;
    private String descripcion;

    public UserTipo() {
        this.id = 0;
        this.descripcion = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
