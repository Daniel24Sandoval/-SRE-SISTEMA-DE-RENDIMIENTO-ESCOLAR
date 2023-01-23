 
package Modelo;

/**
 *
 * @author kimbe
 */
public class ASISTENCIA {
   String ID_asistenciaA;
   String ID_Seccion_AulaA;
   String ID_ALUMNOA;
   String AsistenciaA;
   String Fecha_asistenciaA;
   String EXTRA;
    public  static int count=0;

    public ASISTENCIA() {
    }

    public ASISTENCIA(String ID_asistenciaA, String ID_Seccion_AulaA, String ID_ALUMNOA, String AsistenciaA, String Fecha_asistenciaA, String EXTRA) {
        this.ID_asistenciaA = ID_asistenciaA;
        this.ID_Seccion_AulaA = ID_Seccion_AulaA;
        this.ID_ALUMNOA = ID_ALUMNOA;
        this.AsistenciaA = AsistenciaA;
        this.Fecha_asistenciaA = Fecha_asistenciaA;
        this.EXTRA = EXTRA;
    }

    public String getID_asistenciaA() {
        return ID_asistenciaA;
    }

    public void setID_asistenciaA(String ID_asistenciaA) {
        this.ID_asistenciaA = ID_asistenciaA;
    }

    public String getID_Seccion_AulaA() {
        return ID_Seccion_AulaA;
    }

    public void setID_Seccion_AulaA(String ID_Seccion_AulaA) {
        this.ID_Seccion_AulaA = ID_Seccion_AulaA;
    }

    public String getID_ALUMNOA() {
        return ID_ALUMNOA;
    }

    public void setID_ALUMNOA(String ID_ALUMNOA) {
        this.ID_ALUMNOA = ID_ALUMNOA;
    }

    public String getAsistenciaA() {
        return AsistenciaA;
    }

    public void setAsistenciaA(String AsistenciaA) {
        this.AsistenciaA = AsistenciaA;
    }

    public String getFecha_asistenciaA() {
        return Fecha_asistenciaA;
    }

    public void setFecha_asistenciaA(String Fecha_asistenciaA) {
        this.Fecha_asistenciaA = Fecha_asistenciaA;
    }

    public String getEXTRA() {
        return EXTRA;
    }

    public void setEXTRA(String EXTRA) {
        this.EXTRA = EXTRA;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        ASISTENCIA.count = count;
    }
    
    
}
