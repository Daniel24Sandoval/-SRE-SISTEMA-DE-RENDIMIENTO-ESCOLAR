 
package Modelo;

/**
 *
 * @author kimbe
 */
public class ASIGNATURA {
  String ID_ASIGNATURAA;
  String NOMBRE_ASIGNATURAA;
  String ID_gradoA;
  String Fecha_Creacion_AsignaturaA;
  String Estado_AsigA;
  public  static int count=0;
  
    ///insertar constructor
 public ASIGNATURA() {
        
    }
    public ASIGNATURA(String ID_ASIGNATURAA, String NOMBRE_ASIGNATURAA, String ID_gradoA, String Fecha_Creacion_AsignaturaA, String Estado_AsigA) {
        this.ID_ASIGNATURAA = ID_ASIGNATURAA;
        this.NOMBRE_ASIGNATURAA = NOMBRE_ASIGNATURAA;
        this.ID_gradoA = ID_gradoA;
        this.Fecha_Creacion_AsignaturaA = Fecha_Creacion_AsignaturaA;
        this.Estado_AsigA = Estado_AsigA;
    }
          
    
    ////gett and setter

    public String getID_ASIGNATURAA() {
        return ID_ASIGNATURAA;
    }

    public void setID_ASIGNATURAA(String ID_ASIGNATURAA) {
        this.ID_ASIGNATURAA = ID_ASIGNATURAA;
    }

    public String getNOMBRE_ASIGNATURAA() {
        return NOMBRE_ASIGNATURAA;
    }

    public void setNOMBRE_ASIGNATURAA(String NOMBRE_ASIGNATURAA) {
        this.NOMBRE_ASIGNATURAA = NOMBRE_ASIGNATURAA;
    }

    public String getID_gradoA() {
        return ID_gradoA;
    }

    public void setID_gradoA(String ID_gradoA) {
        this.ID_gradoA = ID_gradoA;
    }

    public String getFecha_Creacion_AsignaturaA() {
        return Fecha_Creacion_AsignaturaA;
    }

    public void setFecha_Creacion_AsignaturaA(String Fecha_Creacion_AsignaturaA) {
        this.Fecha_Creacion_AsignaturaA = Fecha_Creacion_AsignaturaA;
    }

    public String getEstado_AsigA() {
        return Estado_AsigA;
    }

    public void setEstado_AsigA(String Estado_AsigA) {
        this.Estado_AsigA = Estado_AsigA;
    }
    
    
  
  
}
