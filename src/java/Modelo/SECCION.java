
package Modelo;

/**
 *
 * @author kimbe
 */
public class SECCION {
    String ID_Seccion_AulaS;
    String ID_DOCENTES;
    String ID_ASIGNATURAS;
    String Grado_S;
    String Fecha_Creacion_seccionS ;
    String Estado_seccionS ;
    String ID_Grado;
  public  static int count=0;

  //CONSTRUCTOR
 
      public SECCION() {
    }
   
  
    public SECCION(String ID_Seccion_AulaS, String ID_DOCENTES, String ID_ASIGNATURAS, String Grado_S, String Fecha_Creacion_seccionS, String Estado_seccionS, String ID_Grado) {
        this.ID_Seccion_AulaS = ID_Seccion_AulaS;
        this.ID_DOCENTES = ID_DOCENTES;
        this.ID_ASIGNATURAS = ID_ASIGNATURAS;
        this.Grado_S = Grado_S;
        this.Fecha_Creacion_seccionS = Fecha_Creacion_seccionS;
        this.Estado_seccionS = Estado_seccionS;
        this.ID_Grado = ID_Grado;
    }

    
 ///GET AND SETTER

    public String getID_Seccion_AulaS() {
        return ID_Seccion_AulaS;
    }

    public void setID_Seccion_AulaS(String ID_Seccion_AulaS) {
        this.ID_Seccion_AulaS = ID_Seccion_AulaS;
    }

    public String getID_DOCENTES() {
        return ID_DOCENTES;
    }

    public void setID_DOCENTES(String ID_DOCENTES) {
        this.ID_DOCENTES = ID_DOCENTES;
    }

    public String getID_ASIGNATURAS() {
        return ID_ASIGNATURAS;
    }

    public void setID_ASIGNATURAS(String ID_ASIGNATURAS) {
        this.ID_ASIGNATURAS = ID_ASIGNATURAS;
    }

    public String getGrado_S() {
        return Grado_S;
    }

    public void setGrado_S(String Grado_S) {
        this.Grado_S = Grado_S;
    }

    public String getFecha_Creacion_seccionS() {
        return Fecha_Creacion_seccionS;
    }

    public void setFecha_Creacion_seccionS(String Fecha_Creacion_seccionS) {
        this.Fecha_Creacion_seccionS = Fecha_Creacion_seccionS;
    }

    public String getEstado_seccionS() {
        return Estado_seccionS;
    }

    public void setEstado_seccionS(String Estado_seccionS) {
        this.Estado_seccionS = Estado_seccionS;
    }

    public String getID_Grado() {
        return ID_Grado;
    }

    public void setID_Grado(String ID_Grado) {
        this.ID_Grado = ID_Grado;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        SECCION.count = count;
    }



     
}
