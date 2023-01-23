/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *String
 * @author kimbeString
 */
public class DOCENTE {
    	String ID_DOCENT;
        String DNI_DOCE;
        String ID_RolD;
        String NOMBRE_DOCEN;
        String APELLIDO_DOCEN;
        String CONTRA_DOCEN;
        String CORREO_DOCEN;
        String TELEFONO_DOCEN;
        String ESTADO_DOCEN;
        String FECHA_DOCEN;
          public  static int count=0;
        
       ////constructor
           
    public DOCENTE() {
    }

    public DOCENTE(String ID_DOCENT, String DNI_DOCE, String ID_RolD, String NOMBRE_DOCEN, String APELLIDO_DOCEN, String CONTRA_DOCEN, String CORREO_DOCEN, String TELEFONO_DOCEN, String ESTADO_DOCEN, String FECHA_DOCEN) {
        this.ID_DOCENT = ID_DOCENT;
        this.DNI_DOCE = DNI_DOCE;
        this.ID_RolD = ID_RolD;
        this.NOMBRE_DOCEN = NOMBRE_DOCEN;
        this.APELLIDO_DOCEN = APELLIDO_DOCEN;
        this.CONTRA_DOCEN = CONTRA_DOCEN;
        this.CORREO_DOCEN = CORREO_DOCEN;
        this.TELEFONO_DOCEN = TELEFONO_DOCEN;
        this.ESTADO_DOCEN = ESTADO_DOCEN;
        this.FECHA_DOCEN = FECHA_DOCEN;
    }
   
    ///gett and setter

    public String getID_DOCENT() {
        return ID_DOCENT;
    }

    public void setID_DOCENT(String ID_DOCENT) {
        this.ID_DOCENT = ID_DOCENT;
    }

    public String getDNI_DOCE() {
        return DNI_DOCE;
    }

    public void setDNI_DOCE(String DNI_DOCE) {
        this.DNI_DOCE = DNI_DOCE;
    }

    public String getID_RolD() {
        return ID_RolD;
    }

    public void setID_RolD(String ID_RolD) {
        this.ID_RolD = ID_RolD;
    }

    public String getNOMBRE_DOCEN() {
        return NOMBRE_DOCEN;
    }

    public void setNOMBRE_DOCEN(String NOMBRE_DOCEN) {
        this.NOMBRE_DOCEN = NOMBRE_DOCEN;
    }

    public String getAPELLIDO_DOCEN() {
        return APELLIDO_DOCEN;
    }

    public void setAPELLIDO_DOCEN(String APELLIDO_DOCEN) {
        this.APELLIDO_DOCEN = APELLIDO_DOCEN;
    }

    public String getCONTRA_DOCEN() {
        return CONTRA_DOCEN;
    }

    public void setCONTRA_DOCEN(String CONTRA_DOCEN) {
        this.CONTRA_DOCEN = CONTRA_DOCEN;
    }

    public String getCORREO_DOCEN() {
        return CORREO_DOCEN;
    }

    public void setCORREO_DOCEN(String CORREO_DOCEN) {
        this.CORREO_DOCEN = CORREO_DOCEN;
    }

    public String getTELEFONO_DOCEN() {
        return TELEFONO_DOCEN;
    }

    public void setTELEFONO_DOCEN(String TELEFONO_DOCEN) {
        this.TELEFONO_DOCEN = TELEFONO_DOCEN;
    }

    public String getESTADO_DOCEN() {
        return ESTADO_DOCEN;
    }

    public void setESTADO_DOCEN(String ESTADO_DOCEN) {
        this.ESTADO_DOCEN = ESTADO_DOCEN;
    }

    public String getFECHA_DOCEN() {
        return FECHA_DOCEN;
    }

    public void setFECHA_DOCEN(String FECHA_DOCEN) {
        this.FECHA_DOCEN = FECHA_DOCEN;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        DOCENTE.count = count;
    }

    
     
    
}
