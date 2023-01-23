 
package Modelo;

/**
 *
 * @author kimbe
 */
public class INSCRIPCION {
    String ID_Incripcion_CursoI ;
    String  ID_ALUMNOI;
    String ID_Seccion_AulaI ;
    String Fecha_Creacion_inscripcionI ;
    String  Estado_inscripcionI;
    public  static int count=0;

    public INSCRIPCION() {
    }

    public INSCRIPCION(String ID_Incripcion_CursoI, String ID_ALUMNOI, String ID_Seccion_AulaI, String Fecha_Creacion_inscripcionI, String Estado_inscripcionI) {
        this.ID_Incripcion_CursoI = ID_Incripcion_CursoI;
        this.ID_ALUMNOI = ID_ALUMNOI;
        this.ID_Seccion_AulaI = ID_Seccion_AulaI;
        this.Fecha_Creacion_inscripcionI = Fecha_Creacion_inscripcionI;
        this.Estado_inscripcionI = Estado_inscripcionI;
    }

    public String getID_Incripcion_CursoI() {
        return ID_Incripcion_CursoI;
    }

    public void setID_Incripcion_CursoI(String ID_Incripcion_CursoI) {
        this.ID_Incripcion_CursoI = ID_Incripcion_CursoI;
    }

    public String getID_ALUMNOI() {
        return ID_ALUMNOI;
    }

    public void setID_ALUMNOI(String ID_ALUMNOI) {
        this.ID_ALUMNOI = ID_ALUMNOI;
    }

    public String getID_Seccion_AulaI() {
        return ID_Seccion_AulaI;
    }

    public void setID_Seccion_AulaI(String ID_Seccion_AulaI) {
        this.ID_Seccion_AulaI = ID_Seccion_AulaI;
    }

    public String getFecha_Creacion_inscripcionI() {
        return Fecha_Creacion_inscripcionI;
    }

    public void setFecha_Creacion_inscripcionI(String Fecha_Creacion_inscripcionI) {
        this.Fecha_Creacion_inscripcionI = Fecha_Creacion_inscripcionI;
    }

    public String getEstado_inscripcionI() {
        return Estado_inscripcionI;
    }

    public void setEstado_inscripcionI(String Estado_inscripcionI) {
        this.Estado_inscripcionI = Estado_inscripcionI;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        INSCRIPCION.count = count;
    }
    
   
}
