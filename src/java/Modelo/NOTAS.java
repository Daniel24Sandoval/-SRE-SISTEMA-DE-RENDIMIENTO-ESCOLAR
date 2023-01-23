 
package Modelo;

/**
 *
 * @author kimbe
 */
public class NOTAS {
   String ID_NotaN ;
   String ID_Seccion_AulaN;
   String ID_ALUMNON;
   String ID_evalucionN ;
   String NotaN;
   String Fecha_notaN;
   String RESERVA ;
     public  static int count=0;

    public NOTAS() {
    }

    public NOTAS(String ID_NotaN, String ID_Seccion_AulaN, String ID_ALUMNON, String ID_evalucionN, String NotaN, String Fecha_notaN, String RESERVA) {
        this.ID_NotaN = ID_NotaN;
        this.ID_Seccion_AulaN = ID_Seccion_AulaN;
        this.ID_ALUMNON = ID_ALUMNON;
        this.ID_evalucionN = ID_evalucionN;
        this.NotaN = NotaN;
        this.Fecha_notaN = Fecha_notaN;
        this.RESERVA = RESERVA;
    }

    public String getID_NotaN() {
        return ID_NotaN;
    }

    public void setID_NotaN(String ID_NotaN) {
        this.ID_NotaN = ID_NotaN;
    }

    public String getID_Seccion_AulaN() {
        return ID_Seccion_AulaN;
    }

    public void setID_Seccion_AulaN(String ID_Seccion_AulaN) {
        this.ID_Seccion_AulaN = ID_Seccion_AulaN;
    }

    public String getID_ALUMNON() {
        return ID_ALUMNON;
    }

    public void setID_ALUMNON(String ID_ALUMNON) {
        this.ID_ALUMNON = ID_ALUMNON;
    }

    public String getID_evalucionN() {
        return ID_evalucionN;
    }

    public void setID_evalucionN(String ID_evalucionN) {
        this.ID_evalucionN = ID_evalucionN;
    }

    public String getNotaN() {
        return NotaN;
    }

    public void setNotaN(String NotaN) {
        this.NotaN = NotaN;
    }

    public String getFecha_notaN() {
        return Fecha_notaN;
    }

    public void setFecha_notaN(String Fecha_notaN) {
        this.Fecha_notaN = Fecha_notaN;
    }

    public String getRESERVA() {
        return RESERVA;
    }

    public void setRESERVA(String RESERVA) {
        this.RESERVA = RESERVA;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        NOTAS.count = count;
    }
     
     
     
}
