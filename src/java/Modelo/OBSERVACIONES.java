/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author kimbe
 */
public class OBSERVACIONES {
    String ID_Seccion_AulaO;
    String ID_ALUMNOO;
    String ASUNTOO;
    String DESCARGOO;
    String NIVELO;
    String Fecha_observacionO;

    public OBSERVACIONES() {
    }

    public OBSERVACIONES(String ID_Seccion_AulaO, String ID_ALUMNOO, String ASUNTOO, String DESCARGOO, String NIVELO, String Fecha_observacionO) {
        this.ID_Seccion_AulaO = ID_Seccion_AulaO;
        this.ID_ALUMNOO = ID_ALUMNOO;
        this.ASUNTOO = ASUNTOO;
        this.DESCARGOO = DESCARGOO;
        this.NIVELO = NIVELO;
        this.Fecha_observacionO = Fecha_observacionO;
    }

    public String getID_Seccion_AulaO() {
        return ID_Seccion_AulaO;
    }

    public void setID_Seccion_AulaO(String ID_Seccion_AulaO) {
        this.ID_Seccion_AulaO = ID_Seccion_AulaO;
    }

    public String getID_ALUMNOO() {
        return ID_ALUMNOO;
    }

    public void setID_ALUMNOO(String ID_ALUMNOO) {
        this.ID_ALUMNOO = ID_ALUMNOO;
    }

    public String getASUNTOO() {
        return ASUNTOO;
    }

    public void setASUNTOO(String ASUNTOO) {
        this.ASUNTOO = ASUNTOO;
    }

    public String getDESCARGOO() {
        return DESCARGOO;
    }

    public void setDESCARGOO(String DESCARGOO) {
        this.DESCARGOO = DESCARGOO;
    }

    public String getNIVELO() {
        return NIVELO;
    }

    public void setNIVELO(String NIVELO) {
        this.NIVELO = NIVELO;
    }

    public String getFecha_observacionO() {
        return Fecha_observacionO;
    }

    public void setFecha_observacionO(String Fecha_observacionO) {
        this.Fecha_observacionO = Fecha_observacionO;
    }
   
  
    
}
